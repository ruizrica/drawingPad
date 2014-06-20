//
//  ViewController.m
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/19/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"
#import "DrawingSurface.h"

@interface ViewController () {
    NSArray *controlImages;
    NSMutableArray *userDrawnImages;

    UIImage *userDrawnImage;
    int counter;
}
@property (strong, nonatomic) IBOutlet UIImageView *preview;
@property (strong, nonatomic) IBOutlet UIImageView *controlImageBackground;
@property (strong, nonatomic) IBOutlet UIImageView *controlImage;
@property (strong, nonatomic) IBOutlet UIImageView *userInputBackground;
@property (strong, nonatomic) IBOutlet UIView *drawingView;

- (IBAction)clear:(id)sender;
- (IBAction)next:(id)sender;

- (void)counterCheck;
- (void)saveImage;
@end

@implementation ViewController
@synthesize controlImage, controlImageBackground, userInputBackground, drawingView, preview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    drawingView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"userInputBackground.png"]];
    controlImages = @[@"symbol_A.png", @"symbol_B.png",@"symbol_J.png",@"symbol_m.png",@"symbol_R.png" ];
    userDrawnImages = [[NSMutableArray alloc]init];
}

- (IBAction)clear:(id)sender {
    
    [self clearImage];
    preview.image = nil;
}

- (IBAction)next:(id)sender {
    
    controlImage.image = [UIImage imageNamed:[controlImages objectAtIndex: arc4random() % controlImages.count]];
    counter++;
    [self counterCheck]; // Saves Image
    [self clearImage];
}

- (void)counterCheck {

    if (counter >= 2) {
        [self saveImage];
    } else {
        NSLog(@"Counter Value: %i", counter);
    }
}

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
}

@end
