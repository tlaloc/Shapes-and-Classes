//
//  Triangle.h
//  Rectangles
//
//  Created by Not Sure on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GraphicObject.h"

@class XYPoint;

@interface Triangle : GraphicObject

@property float width, height; //, angle;

-(void) setWidth: (float) w andHeight: (float) h; // andAngle: (float) a; 
-(float) area;
-(float) perimeter;
-(void) setOrigin: (XYPoint *) pt;
-(XYPoint *) origin;
-(void) translate: (XYPoint *) vector;
@end

