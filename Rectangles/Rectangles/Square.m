//
//  Square.m
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Square.h"
#import "Rectangle.h"

@implementation Square 
{
	Rectangle *rect;
}

-(id) init
{
    self = [self initWithSide:0];
	return self;
}

-(Square *) initWithSide: (float) s
{
	self = [super init]; 
	if (self)
		if (!rect)
		rect = [[Rectangle alloc] init];
	[rect setWidth: s andHeight: s];
	return self; 
}

-(void) setSide: (float) s
{
	[rect setWidth: s andHeight: s];
}

-(float) side
{
	return [rect width];
}

-(float) area 
{
	return [rect area]; 
}

-(float) perimeter
{
	return [rect perimeter];
}
@end


/*
#import "Square.h" 

 @implementation Square: Rectangle

-(id) initWithSide: (float) s
{
	self = [super init];
	if (self)
		[self setWidth: s andHeight: s];  
	return self;
}

-(void) setSide: (float) s 
{
	[self setWidth: s andHeight: s]; 
}

-(float) side
{
	return self.width;
}
@end
*/