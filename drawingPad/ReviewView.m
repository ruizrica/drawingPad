//
//  ReviewView.m
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/20/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "ReviewView.h"

@interface ReviewView ()

@end

@implementation ReviewView
@synthesize model;

- (void)viewDidLoad
{
    [super viewDidLoad];
    //userObjects = model.userInput;
    self.collectionView.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"System Generated Memory Warning");
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //NSLog(@"userInput count %i",model.userInput.count);
    return model.userInput.count;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *controlImage = (UIImageView *)[cell viewWithTag:100];
    controlImage.image = [UIImage imageNamed:[[model getLessonWithID:1] objectAtIndex:indexPath.row]];
    UIImageView *userImage = (UIImageView *)[cell viewWithTag:200];
    userImage.image = [model.userInput objectAtIndex:indexPath.row];
    
    return cell;
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

@end
