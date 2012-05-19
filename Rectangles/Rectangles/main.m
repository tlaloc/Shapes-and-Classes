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
		
		[myPoint setX: 10 andY: 10];
		[myRect setWidth: 30 andHeight: 20];
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
		/*
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
		*/
		
		//  Testing ContainsPoint //
		XYPoint *testPoint = [[XYPoint alloc] init];
		[testPoint setX: 8 andY: 22];
		NSLog (@"Is (%g,%g) in?  %i", 
			   testPoint.x,testPoint.y,[myRect containsPoint:testPoint]);

		[testPoint setX: 5.8 + 15.6 andY: 0.1];
		NSLog (@"Is (%g,%g) in?  %i", 
			   testPoint.x,testPoint.y,[myRect containsPoint:testPoint]);
		
		//  Testing intersect //
		Rectangle *rect2 = [[Rectangle alloc] init];
		[myPoint setX: 20 andY: 20];
		[rect2 setWidth: 30 andHeight: 20];
		rect2.origin = myPoint;		
		
		NSLog (@"\nmyRect: w = %g, h = %g", myRect.width, myRect.height); 
		NSLog (@"\n   Origin at (%g, %g)", myRect.origin.x, myRect.origin.y);
		
		NSLog (@"\nrect2: w = %g, h = %g", rect2.width, rect2.height); 
		NSLog (@"\n   Origin at (%g, %g)", rect2.origin.x, rect2.origin.y);
		
		Rectangle *miRect;
		miRect = [myRect intersect: rect2];
		NSLog (@"\niRect origin: (%g,%g)", miRect.origin.x, miRect.origin.y);
		NSLog (@"\n    width: %g   height: %g",miRect.width, miRect.height);
	}
	return 0; 
}