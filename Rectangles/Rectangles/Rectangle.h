//
//  Rectangle.h
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h> 

@class XYPoint;

@interface Rectangle: NSObject 

@property float width, height;

-(void) setWidth: (float) w andHeight: (float) h; 
-(float) area;
-(float) perimeter;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
@end