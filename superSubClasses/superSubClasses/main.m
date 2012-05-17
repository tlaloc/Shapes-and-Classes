//
//  main.m
//  superSubClasses
//
//  Created by Not Sure on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

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
	    
	    // insert code here...
	    NSLog(@"Hello, World!");
	    
	}
    return 0;
}

