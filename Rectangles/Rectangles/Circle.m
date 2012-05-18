//
//  Circle.m
//  Rectangles
//
//  Created by Not Sure on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Circle.h"
#import "XYPoint.h"
//#import "Math.h"


@implementation Circle
{
	XYPoint *origin;
}

@synthesize radius;

-(float) area
{
	return radius * radius * M_PI;
}

-(float) circumference
{
	return 2 * M_PI * radius;
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