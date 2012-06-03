//
//  Square.m
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

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