//
//  ViewController.h
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/19/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LessonModel.h"

@interface ViewController : UIViewController
@property (nonatomic) int speed;
@property (nonatomic,strong) LessonModel *modelObject;
@end
