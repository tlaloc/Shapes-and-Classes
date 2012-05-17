//
//  main.m
//  superSubClasses
//
//  Created by Not Sure on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

// Simple example to illustrate inheritance #import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>

// ClassA declaration and definition

@interface ClassA: NSObject 
{
	int x; 
}

-(void) initVar; 
@end

@implementation ClassA 
-(void) initVar
{
	x = 100; 
}
@end

// Class B declaration and definition

@interface ClassB: ClassA 
-(void) printVar;
@end

@implementation ClassB 
-(void) printVar
{
	NSLog (@"x = %i", x); 
}
@end

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		ClassB *b = [[ClassB alloc] init];
		
		[b initVar]; // will use inherited method		
		[b printVar]; // reveal value of x; 
	}
		
		return 0;
}

