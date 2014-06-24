//
//  ReviewView.m
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/20/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "ReviewView.h"
#import <MessageUI/MessageUI.h>

@interface ReviewView ()<MFMailComposeViewControllerDelegate>

@end

@implementation ReviewView
@synthesize model;

- (void)viewDidLoad
{
    [super viewDidLoad];

    //userObjects = model.userInput;
    self.collectionView.backgroundColor = [UIColor redColor];
    
    //Add a bar button for emailing
    UIBarButtonItem *emailButton = [[UIBarButtonItem alloc] initWithTitle:@"email" style:UIBarButtonItemStylePlain
        target:self action:@selector(email)];
    
    self.navigationItem.rightBarButtonItem = emailButton;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.title = @"Results:";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"System Generated Memory Warning");
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return model.userInput.count;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cvBackground.png"]];
    
    UIImageView *controlImage = (UIImageView *)[cell viewWithTag:100];
    controlImage.image = [UIImage imageNamed:[model.symbols objectAtIndex:indexPath.row]] ;
    UIImageView *userImage = (UIImageView *)[cell viewWithTag:200];
    userImage.image = [model.userInput objectAtIndex:indexPath.row];
    
    return cell;
}
-(void)email{

    //blank for now
    
    MFMailComposeViewController *composeMail = [[MFMailComposeViewController alloc]init];
    
    UIGraphicsBeginImageContext(self.view.bounds.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *saveResult = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSData *myResult  = UIImageJPEGRepresentation(saveResult, 1.0);
    
    [composeMail addAttachmentData:myResult mimeType:@"image/jpeg"  fileName:[NSString stringWithFormat: @"a.jpg"]];
    
    [self presentViewController:composeMail animated:YES completion:nil];
    
    
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{

    switch (result) {
        case MFMailComposeResultSent:
            NSLog(@"Mail Sent");
            break;
            
        default:
            break;
    }
    [controller dismissViewControllerAnimated:YES completion:nil];
}

@end
