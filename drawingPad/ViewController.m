//
//  ViewController.m
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/19/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"
#import "DrawingSurface.h"
#import "ReviewView.h"

@interface ViewController ()<UIActionSheetDelegate> {
    NSArray *controlImages;
    NSMutableArray *userDrawnImages;
    UIImage *userDrawnImage;
    UIBarButtonItem *options;
    int counter;
    NSTimer* durationTimer;
}

@property (weak, nonatomic) IBOutlet UILabel *speedLabel;

//<-- temporary
@property (strong, nonatomic) IBOutlet UIImageView *preview;
@property (strong, nonatomic) IBOutlet UIImageView *controlImageBackground;
@property (strong, nonatomic) IBOutlet UIImageView *controlImage;
@property (strong, nonatomic) IBOutlet UIImageView *userInputBackground;
@property (strong, nonatomic) IBOutlet UIView *drawingView;
@property (strong, nonatomic) IBOutlet UIButton *start_next;

- (IBAction)clear:(id)sender;
- (IBAction)next:(UIButton *)sender;

- (void)counterCheck;
- (void)saveImage;
- (void)popMenu;
- (void)goToReview;
@end

@implementation ViewController
@synthesize controlImage, controlImageBackground, userInputBackground, drawingView, preview, start_next, modelObject,speedLabel,speed;

- (void)viewDidLoad
{
    [super viewDidLoad];
    speedLabel.text = [NSString stringWithFormat:@"%d",speed] ;
    modelObject = [[LessonModel alloc]init];
    controlImages = [modelObject getLessonWithID:1];
    userDrawnImages = [[NSMutableArray alloc]init];

    options = [[UIBarButtonItem alloc]
                                initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(popMenu)];
    self.navigationItem.rightBarButtonItem = options;
    
    //set in counter to 0
    counter = 0;
}

- (IBAction)clear:(id)sender {

    [self clearImage];
}

- (IBAction)next:(UIButton *)sender {
    
    if ([sender.currentTitle  isEqual: @"Start"]) {
        
        //Change the button title from Start to Next
        [sender setTitle:@"Next" forState:UIControlStateNormal];
        
        //Flash the first image
        controlImage.image = [UIImage imageNamed:controlImages[0]];
        
        //start the countdown
        durationTimer = [NSTimer scheduledTimerWithTimeInterval:speed target:self selector:@selector(clearControlImage) userInfo:nil  repeats:NO];
       
        //accumulate counter
        counter++;
        }
    
    else if ([sender.currentTitle isEqual:@"Next"]){
        
        if (counter<=9){
        controlImage.image = [UIImage imageNamed:controlImages[counter]];
        
        //start the countdown
        durationTimer = [NSTimer scheduledTimerWithTimeInterval:speed target:self selector:@selector(clearControlImage) userInfo:nil  repeats:NO];
        
        //accumulate counter
        
      
        
        counter++;
        }
        else {
            [self  goToReview];
        
        NSLog(@"Control Images %d",controlImages.count
              );
        
        }
        [self saveImage];
        [self clearImage];
    
    }
}

- (void)popMenu {
    
    UIActionSheet *optionsMenu = [[UIActionSheet alloc]initWithTitle:@"Options" delegate:self cancelButtonTitle:@"Dismiss" destructiveButtonTitle:@"Clear Screen" otherButtonTitles:@"ResultsView", nil];
    
    [optionsMenu showFromBarButtonItem:options animated:YES];
}

// ActionSheet Delegate: Selected Button Index
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (buttonIndex) {
        case 0: [self clearImage]; // Reset Lesson
            break;
        case 1: [self goToReview];
            break;
        default:
            break;
    }
}

// ActionSheet Delegate: Cancelled
- (void)actionSheetCancel:(UIActionSheet *)actionSheet {
    NSLog(@"User Cancelled Selection");
}

// Push to ReviewView
- (void)goToReview {
    
    modelObject.userInput = userDrawnImages;
    ReviewView *review =[self.storyboard instantiateViewControllerWithIdentifier:@"ReviewView"];
    review.model = modelObject;
    
    [self.navigationController pushViewController:review animated:YES];
}

// Save Image
- (void)saveImage {
    
    UIGraphicsBeginImageContext(drawingView.bounds.size);
    [drawingView.layer renderInContext:UIGraphicsGetCurrentContext()];
    userDrawnImage = UIGraphicsGetImageFromCurrentImageContext();
    [userDrawnImages addObject:userDrawnImage];
    UIGraphicsEndImageContext();
    
    NSLog(@"Images Saved:%lu",(unsigned long)userDrawnImages.count);
    preview.image = userDrawnImage;
}

// Clear Image
- (void)clearImage {
    
    [(DrawingSurface *)drawingView clearSurface];
     preview.image = nil;
}

// Clear Control Image
-(void)clearControlImage{
    controlImage.image = nil;
    NSLog(@"Cleared!");
}
@end
