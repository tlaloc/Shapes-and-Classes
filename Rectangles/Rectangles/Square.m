//
//  Square.m
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Square.h" 

@implementation Square: Rectangle

-(void) setSide: (int) s 
{
	[self setWidth: s andHeight: s]; 
}

-(int) side
{
	return self.width;
}
@end