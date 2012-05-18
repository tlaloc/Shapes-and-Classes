//
//  main.m
//  proj4E.7
//
//  Created by Not Sure on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main (int argc, char * argv[]) 
{
	@autoreleasepool {
		Rectangle *myRect = [[Rectangle alloc] init];
		XYPoint *myPoint = [[XYPoint alloc] init];
		
		[myPoint setX: 2.5 andY: 20.3];

		[myRect setWidth: 15.5 andHeight: 28.1];
		myRect.origin = myPoint;
		
		NSLog (@"\nRectangle: w = %g, h = %g", myRect.width, myRect.height); 
		
		NSLog (@"\nOrigin at (%g, %g)", myRect.origin.x, myRect.origin.y);
		
		XYPoint *vector1 = [[XYPoint alloc] init];
		[vector1 setX: 3.3 andY: -20.3];
		[myRect translate: vector1];
		NSLog (@"\nOrigin translated to: (%g, %g)", 
			   myRect.origin.x, myRect.origin.y);
	}
	return 0; 
}

/*
int main (int argc, char * argv[]) 
{
	@autoreleasepool {
		Rectangle *myRect = [[Rectangle alloc] init];
		XYPoint *myPoint = [[XYPoint alloc] init];
		//		NSLog(@"1");
		[myPoint setX: 2.5 andY: 20.3];
		//		NSLog(@"2");
		[myRect setWidth: 15.5 andHeight: 28.1];
		myRect.origin = myPoint;
		
		NSLog (@"\nRectangle: w = %g, h = %g", myRect.width, myRect.height); 
		
		NSLog (@"\nOrigin at (%g, %g)", myRect.origin.x, myRect.origin.y);
		
		NSLog (@"\nArea = %g, Perimeter = %g", 
			   [myRect area], [myRect perimeter]);
		
		Square *mySquare = [[Square alloc] init];
		[mySquare setSide: 5.6];
		NSLog (@"\nSquare s = %g", [mySquare side]);
		NSLog (@"\nArea = %g, Perimeter = %g", [mySquare area], 
			   [mySquare perimeter]);
		
		[myPoint setX: 77.8 andY: 88.1];
		NSLog (@"\nOrigin at (%g, %g)", myRect.origin.x, myRect.origin.y);
		
		float q = myRect.origin.x;
		float p = myRect.origin.y;
		
		XYPoint *theOrigin = [[XYPoint alloc] init];
		[theOrigin setX: q andY: p];
		NSLog (@"\ntheOrigin at (%g, %g)", theOrigin.x, theOrigin.y);
		theOrigin.x = 22.2;
		theOrigin.y = 33.3;
		NSLog (@"\nOrigin at (%g, %g)", myRect.origin.x, myRect.origin.y);
		NSLog (@"\ntheOrigin at (%g, %g)", theOrigin.x, theOrigin.y);
	}
	return 0; 
}

#import <Foundation/Foundation.h>

@interface Rectangle: NSObject
-(void) setWidth: (int) w; 
-(void) setHeight: (int) h; 
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end

@implementation Rectangle
{
	int width; 
	int height; 
	int area; 
	int perimeter;
}

-(void) setWidth: (int) w
{    
    width = w;
}

-(void) setHeight: (int) h
{
    height = h;
}

-(int) width
{
	return width;
}

-(int) height
{
	return height;
}

-(int) area
{
    return area = width * height;
}

-(int) perimeter
{
	return perimeter = 2*width + 2*height;
}
@end

int main(int argc, const char * argv[])
{
	
    @autoreleasepool {
		Rectangle *aRect = [[Rectangle alloc] init];        
        [aRect setWidth: 13];
		[aRect setHeight:1];
		
		
        NSLog(@"\nHello, you have a rectangle:\nheight = %i", [aRect height]);
        NSLog(@"\nwidth = %i", [aRect width]);
        NSLog(@"\narea = %i", [aRect area]);		
        NSLog(@"\nperimeter = %i", [aRect perimeter]);		
    }
    return 0;
}
*/

