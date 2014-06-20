//
//  DrawingSurface.m
//  simpleDrawing
//
//  Created by Rommel Brigaudit on 6/12/14.
//  Copyright (c) 2014 Rommel Brigaudit. All rights reserved.
//

#import "DrawingSurface.h"

@implementation DrawingSurface
@synthesize path,collectionOfPaths;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    
   
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        self.collectionOfPaths = [[NSMutableArray alloc]init];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
  self.path = [UIBezierPath bezierPath];
    path.lineWidth = 30.0f;
    
   [collectionOfPaths addObject:path];
    
    UITouch *touch = [touches anyObject];
    
    [[self.collectionOfPaths lastObject] moveToPoint:[touch locationInView:self]];
    
    
    

}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{


    UITouch *touch =  [touches anyObject];
    [[self.collectionOfPaths lastObject] addLineToPoint:[touch locationInView:self]];
     [self setNeedsDisplay];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch =[touches anyObject];
    [[self.collectionOfPaths lastObject] addLineToPoint:[touch locationInView:self]];
    [self setNeedsDisplay];

              
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [[UIColor redColor]setStroke];
    
for (UIBezierPath *thePath in collectionOfPaths)
    //{
 [thePath stroke];
    //}
    }

-(void)clearSurface {
    [collectionOfPaths removeAllObjects];
    [self setNeedsDisplay];
}

@end
