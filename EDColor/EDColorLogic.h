//
//  EDColorLogic.h
//  color
//
//  Created by Zak.
//  Copyright (c) 2013 Andrew Sliwinski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EDColorLogic : NSObject

#if TARGET_OS_IPHONE
#define colorClass UIColor
#else
#define colorClass NSColor
#endif

+ (colorClass *)colorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha;

+ (colorClass *)colorWithHex:(UInt32)hex;
+ (colorClass *)colorWithHexString:(id)input;

@end
