//
//  NSColor+Hex.h
//  color
//
//  Created by Zak.
//  Copyright (c) 2013 Andrew Sliwinski. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSColor (Hex)

@property (weak) NSString *hexColorString;

+ (NSColor *)colorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha;

+ (NSColor *)colorWithHex:(UInt32)hex;
+ (NSColor *)colorWithHexString:(id)input;

@end
