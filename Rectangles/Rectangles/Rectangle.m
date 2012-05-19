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

-(void) translate: (XYPoint *) vector
{
	origin.x += vector.x;
	origin.y += vector.y;
}

-(BOOL) containsPoint: (XYPoint *) aPoint
{
	if (origin.x <= aPoint.x && aPoint.x <= origin.x + width
		&& origin.y <= aPoint.y && aPoint.y <= origin.y + height)
		return YES;
	else 
		return NO;
}

-(Rectangle *) intersect: (Rectangle *) r
{
	Rectangle *iRect = [[Rectangle alloc] init];
	XYPoint *iPoint = [[XYPoint alloc] init]; 
	
	float x1, x2, y1, y2;  
	
	// iRect corners
	x1 = (origin.x >= r.origin.x ? origin.x : r.origin.x);
	x2 = (origin.x+width <= r.origin.x+r.width? origin.x+width: r.origin.x+r.width);
	y1 = (origin.y >= r.origin.y? origin.y: r.origin.y);
	y2 = (origin.y+height <= r.origin.y+r.height? origin.y+height: r.origin.y+r.height);
	
	// checks for intersection  
	if (x1 <= x2 && y1 <= y2) {
		iRect.width = x2 - x1;  
        iRect.height = y2 - y1;  
        iPoint.x = x1;  
        iPoint.y = y1;  
	}
	
	// no intersection  
	else {                     
        iRect.width = 0;  
        iRect.height = 0;  
        iPoint.x = 0;  
        iPoint.y = 0;  
    }  
    
	iRect.origin = iPoint; 
		
	return iRect;
}
		
		
	@end