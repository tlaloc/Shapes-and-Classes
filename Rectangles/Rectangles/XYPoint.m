//
//  XYPoint.m
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XYPoint.h" 

@implementation XYPoint @synthesize x, y;

-(void) setX: (int) xVal andY: (int) yVal 
{
	x = xVal;
	y = yVal; 
}
@end