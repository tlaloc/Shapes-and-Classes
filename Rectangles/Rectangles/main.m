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
#import "Circle.h"
#import "Triangle.h"

int main (int argc, char * argv[]) 
{
	@autoreleasepool {
		Rectangle *myRect = [[Rectangle alloc] init];
		XYPoint *myPoint = [[XYPoint alloc] init];
		Circle *myCir = [[Circle alloc] init];
		Triangle *myTri = [[Triangle alloc] init];
		
		[myPoint setX: 2.5 andY: 20.3];
		[myRect setWidth: 15.5 andHeight: 28.1];
		myRect.origin = myPoint;
		
		[myPoint setX: 5.2 andY: 17.7];
		[myCir setRadius: 5.5];
		myCir.origin = myPoint;
		
		[myPoint setX: 7.6 andY: 14.4];
		[myTri setWidth: 12.9 andHeight: 19.3];
		myTri.origin = myPoint;
		
		NSLog (@"\nRectangle: w = %g, h = %g", myRect.width, myRect.height); 
		NSLog (@"\n   Origin at (%g, %g)", myRect.origin.x, myRect.origin.y);
		NSLog (@"\n   Area = %g, Perimeter = %g", [myRect area], [myRect perimeter]);
		
		NSLog (@"\nCircle: r = %g", myCir.radius); 
		NSLog (@"\n   Origin at (%g, %g)", myCir.origin.x, myCir.origin.y);
		NSLog (@"\n   Area = %g, Circum = %g", [myCir area], [myCir circumference]);
		
		NSLog (@"\nTriangle: w = %g, h = %g", myTri.width, myTri.height); 
		NSLog (@"\n   Origin at (%g, %g)", myTri.origin.x, myTri.origin.y);
		NSLog (@"\n   Area = %g, Perimeter = %g", [myTri area], [myTri perimeter]);
		
		
		//  Testing translation  //
		XYPoint *vector1 = [[XYPoint alloc] init];
		[vector1 setX: 3.3 andY: -20.3];
		[myRect translate: vector1];
		NSLog (@"\nRect translated to: (%g, %g)", 
			   myRect.origin.x, myRect.origin.y);
		[myCir translate: vector1];
		NSLog (@"\nCir translated to: (%g, %g)", 
			   myCir.origin.x, myCir.origin.y);
		[myTri translate: vector1];
		NSLog (@"\nTri translated to: (%g, %g)", 
			   myTri.origin.x, myTri.origin.y);
		
		//  Testing ContainsPoint //
		XYPoint *testPoint = [[XYPoint alloc] init];
		[testPoint setX: 8 andY: 22];
		NSLog (@"Is (%g,%g) in?  %i", 
			   testPoint.x,testPoint.y,[myRect containsPoint:testPoint]);

		[testPoint setX: 5.8 + 15.6 andY: 0.1];
		NSLog (@"Is (%g,%g) in?  %i", 
			   testPoint.x,testPoint.y,[myRect containsPoint:testPoint]);
		
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

