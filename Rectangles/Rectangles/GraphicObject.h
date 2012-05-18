//
//  GraphicObject.h
//  Rectangles
//
//  Created by Not Sure on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
{  
	int		fillColor;	// 32-bit color  
	BOOL	filled;		// Is the object filled?  
	int		lineColor;	// 32-bit line color  
} 
	@property	int		fillColor, lineColor;
	@property	BOOL	filled;
@end
