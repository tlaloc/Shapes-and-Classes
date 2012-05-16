//
//  main.m
//  proj4E.7
//
//  Created by Not Sure on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"
#import "Square.h"

int main (int argc, char * argv[]) 
{
	@autoreleasepool {
		Rectangle *myRect = [[Rectangle alloc] init];
		[myRect setWidth: 5 andHeight: 8];
		NSLog (@"Rectangle: w = %i, h = %i", myRect.width, myRect.height); 
		NSLog (@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
		
		Square *mySquare = [[Square alloc] init];
		[mySquare setSide: 5];
		NSLog (@"Square s = %i", [mySquare side]);
		NSLog (@"Area = %i, Perimeter = %i", [mySquare area], 
			   [mySquare perimeter]);
	}
	return 0; 
}

/*
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

