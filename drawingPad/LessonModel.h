//
//  LessonModel.h
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/20/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LessonModel : NSObject

@property (nonatomic,strong) NSString *lessonID;
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSArray *symbols;
@property (nonatomic,strong) NSArray *userInput;

@end
