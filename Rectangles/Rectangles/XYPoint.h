//
//  XYPoint.h
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h> 

@interface XYPoint: NSObject 

@property float x, y;

-(void) setX: (float) xVal andY: (float) yVal; 
-(void) print;
@end