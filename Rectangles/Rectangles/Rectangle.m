//
//  Rectangle.m
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h" 
@implementation Rectangle

@synthesize width, height;

-(void) setWidth: (int) w andHeight: (int) h 
{
	width = w;
	height = h; 
}

-(int) area 
{
		return width * height; 
}

-(int) perimeter 
{
return (width + height) * 2; 
}
@end