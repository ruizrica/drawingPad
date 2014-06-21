//
//  ReviewView.h
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/20/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LessonModel.h"

@interface ReviewView : UICollectionViewController

@property (nonatomic,strong) NSArray *userObjects;
@property (nonatomic,strong) NSArray *displayedControlImages;
@property (nonatomic,strong) NSArray *collectionArray;
@property (nonatomic,strong) LessonModel *model;

@end
