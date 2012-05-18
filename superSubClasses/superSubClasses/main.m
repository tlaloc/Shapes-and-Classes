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
	int x;  // will be inherited by subclasses
}

-(void) initVar;
-(void) printVar;   
// added the printVar method here, even though it was already in ClassB 
// because inheritance is not bidirectional. 
@end

@implementation ClassA 
-(void) initVar
{
	x = 100; 
}
-(void) printVar
{
	NSLog (@"x = %i", x);
}

@end

// Class B declaration and definition

@interface ClassB: ClassA 
-(void) initVar;  // added method overrides the parent (ClassA) method
				  //-(void) printVar;
@end

@implementation ClassB
-(void) initVar
{
	x = 200;
}
-(void) printVar
{
	NSLog (@"x = %i", x); 
}
@end

@interface ClassB2: ClassA
-(void) negVar;
@end

@implementation ClassB2
-(void) negVar 
{
	x *= -1; 
}
@end

@interface ClassC: ClassB
-(void) printVar;
@end

@implementation ClassC
-(void) printVar;
{
	NSLog (@"ClassC says x is still %i, bitches.", x);
}
@end


int main (int argc, char * argv[])
{

	@autoreleasepool {
		ClassA *a = [[ClassA alloc] init];
		ClassB *b = [[ClassB alloc] init];
		ClassB2 *b2 = [[ClassB2 alloc] init];
		ClassC *c = [[ClassC alloc] init];
		
		[a initVar]; // uses ClassA method		
		[a printVar]; // reveal value of x; 

		[b initVar]; // uses overriding ClassB method		
		[b printVar]; // reveal value of x; 
		
		[b2 initVar];
		[b2 negVar];
		[b2 printVar];
		
		[c initVar];
		[c printVar];
		
		
	}
	return 0;
}









/*
int main(int argc, const char * argv[])
{

	@autoreleasepool {
		ClassB *b = [[ClassB alloc] init];
		
		//		[b initVar]; // will use inherited method		
		[b initVar]; // will use overriding method in ClassB		
		[b printVar]; // reveal value of x; 
	}
		
		return 0;
}
*/
