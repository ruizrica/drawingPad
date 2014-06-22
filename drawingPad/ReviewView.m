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

@end
