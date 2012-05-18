//
//  Triangle.m
//  Rectangles
//
//  Created by Not Sure on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Triangle.h"
#import "XYPoint.h"
#import <math.h>

@implementation Triangle
{
	XYPoint *origin;
}

@synthesize width, height;  //, angle;

-(void) setWidth: (float) w andHeight: (float) h  // andAngle: (float) a 
{
	width = w;
	height = h;
	/*	
	angle = a;
	if (0 > angle > 0.999) {
		NSLog (@"\nHere's a right triangle. \nNext time, please choose an angle in tau radians (0 < a < 1).");
		angle = 0.25;
	*/
}
 
-(float) area
{
	return 0.5 * width * height;
}

-(float) perimeter
{
	return (width + height) + sqrt(pow(width,2) + pow(height,2));
}

-(void) setOrigin: (XYPoint *) pt
{
	if (! origin)
		origin = [[XYPoint alloc] init];
	origin.x = pt.x;
	origin.y = pt.y;
	//	NSLog(@"hey guys, setOrigin is invoked");
}

-(XYPoint *) origin
{
	return origin;
}

-(void) translate: (XYPoint *) vector
{
	origin.x += vector.x;
	origin.y += vector.y;
}
@end