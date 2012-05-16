//
//  Rectangle.h
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h> 

//@class XYPoint;

@interface Rectangle: NSObject 

@property int width, height;

//-(XYPoint *) origin;
//-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h; 
-(int) area;
-(int) perimeter;
@end