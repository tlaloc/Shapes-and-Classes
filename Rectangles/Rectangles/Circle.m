//
//  Circle.m
//  Rectangles
//
//  Created by Not Sure on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Circle.h"
#import "XYPoint.h"

@implementation Circle
{
	XYPoint *origin;
}

@synthesize radius;

-(float) area
{
	return 0.5 * TAU * radius * radius;
}

-(float) circumference
{
	return TAU * radius;
}

-(void) setOrigin: (XYPoint *) pt
{
	if (! origin)
		origin = [[XYPoint alloc] init];
	origin.x = pt.x;
	origin.y = pt.y;
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