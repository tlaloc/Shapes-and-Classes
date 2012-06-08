//
//  Circle.h
//  Rectangles
//
//  Created by Not Sure on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "GraphicObject.h"
#define TAU		2 * M_PI

@class XYPoint;

@interface Circle : GraphicObject
{  
    float radius;  
} 

@property float radius;

-(void) setRadius: (float) r;
//-(float) cirPoint: (XYPoint *) origin; 
-(float) area;
-(float) circumference;
-(void) setOrigin: (XYPoint *) pt;
-(XYPoint *) origin;
-(void) translate: (XYPoint *) vector;
@end