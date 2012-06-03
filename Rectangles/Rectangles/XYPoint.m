//
//  XYPoint.m
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XYPoint.h" 

@implementation XYPoint 

@synthesize x, y;

-(void) setX: (float) xVal andY: (float) yVal
{
	x = xVal;
	y = yVal;
	//	NSLog(@"yo yo yo dogs, setXandY indahowse");
}

-(void) print
{
	NSLog(@"\n(%g,%g)",x,y);
}
@end