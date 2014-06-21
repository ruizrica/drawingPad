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
    int buttonCounter;
}
@property (strong, nonatomic) IBOutlet UIImageView *preview;
@property (strong, nonatomic) IBOutlet UIImageView *controlImageBackground;
@property (strong, nonatomic) IBOutlet UIImageView *controlImage;
@property (strong, nonatomic) IBOutlet UIImageView *userInputBackground;
@property (strong, nonatomic) IBOutlet UIView *drawingView;
@property (strong, nonatomic) IBOutlet UIButton *start_next;

- (IBAction)clear:(id)sender;
- (IBAction)next:(id)sender;

- (void)counterCheck;
- (void)buttonCounterCheck;
- (void)saveImage;
- (void)popMenu;
@end

@implementation ViewController
@synthesize controlImage, controlImageBackground, userInputBackground, drawingView, preview, start_next;

- (void)viewDidLoad
{
    [super viewDidLoad];
    buttonCounter = 0;
    controlImages = @[@"symbol_A.png", @"symbol_B.png",@"symbol_J.png",@"symbol_m.png",@"symbol_R.png" ];
    userDrawnImages = [[NSMutableArray alloc]init];
    
    options = [[UIBarButtonItem alloc]
                                initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(popMenu)];
    self.navigationItem.rightBarButtonItem = options;
}

- (IBAction)clear:(id)sender {
    
    [self clearImage];
   
}

- (IBAction)next:(id)sender {
    
    controlImage.image = [UIImage imageNamed:[controlImages objectAtIndex: arc4random() % controlImages.count]];
    counter++;
    buttonCounter++;
    [self buttonCounterCheck];
    
    [self counterCheck]; // Saves Image
    [self clearImage];
}

- (void)buttonCounterCheck {
    if (buttonCounter >= 2) {
        start_next.titleLabel.text = @"Next";
    }
}

- (void)popMenu {
    
    UIActionSheet *optionsMenu = [[UIActionSheet alloc]initWithTitle:@"Options" delegate:self cancelButtonTitle:@"Dismiss" destructiveButtonTitle:@"Clear Screen" otherButtonTitles:@"ResultsView", nil];
    
    [optionsMenu showFromBarButtonItem:options animated:YES];
}

// Delegate Methods
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (buttonIndex) {
        case 0: [self clearImage]; // Reset Lesson
            break;
        case 1: {
            ReviewView *review =[self.storyboard instantiateViewControllerWithIdentifier:@"ReviewView"];
            [self.navigationController pushViewController:review animated:YES];
        }
            break;
        default:
            break;
    }
}

- (void)actionSheetCancel:(UIActionSheet *)actionSheet {
    NSLog(@"User Cancelled Selection");
}
//
- (void)counterCheck {

    if (counter >= 2) {
        [self saveImage];
    } else {
        NSLog(@"Counter Value: %i", counter);
    }
}


// Save & Clear Image
//
- (void)saveImage {
    
    UIGraphicsBeginImageContext(drawingView.bounds.size);
    [drawingView.layer renderInContext:UIGraphicsGetCurrentContext()];
    userDrawnImage = UIGraphicsGetImageFromCurrentImageContext();
    [userDrawnImages addObject:userDrawnImage];
    UIGraphicsEndImageContext();
    
    NSLog(@"Images Saved:%lu",(unsigned long)userDrawnImages.count);
    preview.image = userDrawnImage;
}

- (void)clearImage {
    
    [(DrawingSurface *)drawingView clearSurface];
     preview.image = nil;
}

@end
