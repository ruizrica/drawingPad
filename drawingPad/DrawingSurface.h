//
//  DrawingSurface.h
//  simpleDrawing
//
//  Created by Rommel Brigaudit on 6/12/14.
//  Copyright (c) 2014 Rommel Brigaudit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingSurface : UIView{

    UIBezierPath *path;
    NSMutableArray *collectionOfPaths;
}
@property (retain)UIBezierPath *path;
@property (strong, nonatomic) NSMutableArray *collectionOfPaths;

- (void)clearSurface;

@end
