//
//  Rectangle.m
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
	XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth: (float) w andHeight: (float) h 
{
	width = w;
	height = h; 
}

-(float) area 
{
	return width * height; 
}

-(float) perimeter 
{
	return (width + height) * 2; 
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
@end