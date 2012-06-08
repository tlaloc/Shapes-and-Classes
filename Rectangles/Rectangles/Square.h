//
//  Square.h
//  Rectangles
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Rectangle.h" 

@interface Square: NSObject

-(Square *) initWithSide: (float) s;
-(void) setSide: (float) s;
-(float) side;
-(float) area;
-(float) perimeter;
@end

/*
 Square: Rectangle
 
 -(id) initWithSide: (float) s;
 -(void) setSide: (float) s; 
 -(float) side;
 @end
 */