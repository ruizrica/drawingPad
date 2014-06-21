//
//  SpeedSelectionViewController.m
//  drawingPad
//
//  Created by Rommel Brigaudit on 6/21/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "SpeedSelectionViewController.h"
#import "ViewController.h"

@interface SpeedSelectionViewController ()
- (IBAction)speedButtonPressed:(UIButton *)sender;

@end

#define FLASHING_SPEED 1

@implementation SpeedSelectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)speedButtonPressed:(UIButton *)sender {
    
    ViewController *mainScreen =[self.storyboard instantiateViewControllerWithIdentifier:@"MainScreen"];
    
    mainScreen.speed = FLASHING_SPEED * sender.tag;
    
    mainScreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    [self presentViewController:mainScreen animated:YES completion:nil];
    
    
}
@end
