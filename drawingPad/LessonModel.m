//
//  LessonModel.m
//  drawingPad
//
//  Created by Ricardo Ruiz on 6/20/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "LessonModel.h"

@implementation LessonModel
@synthesize title, symbols, lessonID, userInput;

// Lessons
@synthesize lesson_1;

- (id)init {
    self = [super init];
    if (self) {
        
        lesson_1 = @[@"symbol_1.png",@"symbol_2.png",@"symbol_3.png",@"symbol_4.png",@"symbol_5.png",@"symbol_6.png",@"symbol_7.png",@"symbol_8.png",@"symbol_9.png",@"symbol_10.png"];
    }
    return self;
}


- (NSArray *)getLessonWithID:(int)lesson_ID {
    
    NSArray *selectedArray = [[NSArray alloc]init];
    switch (lesson_ID) {
        case 1: selectedArray = lesson_1;
            break;
    // Need Rest of Lessons
        default:
            break;
    }
    return selectedArray;
}
@end
