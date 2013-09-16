//
//  NSColor+Hex.m
//  color
//
//  Created by Zak.
//  Copyright (c) 2013 Andrew Sliwinski. All rights reserved.
//

#import "NSColor+Hex.h"
#import "EDColorLogic.h"

@implementation NSColor (Hex)

+ (NSColor *)colorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha
{
    return [EDColorLogic colorWithHex:hex andAlpha:alpha];
}

+ (NSColor *)colorWithHex:(UInt32)hex
{
    return [EDColorLogic colorWithHex:hex];
}

+ (NSColor *)colorWithHexString:(id)hexString
{
    return [EDColorLogic colorWithHexString:hexString];
}

- (NSString *)hexColorString {
    
    double redFloatValue, greenFloatValue, blueFloatValue;
    int redIntValue, greenIntValue, blueIntValue;
    NSString *redHexValue, *greenHexValue, *blueHexValue;
    
    NSColor *convertedColor = [self colorUsingColorSpaceName:NSCalibratedRGBColorSpace];
    
    if(convertedColor) {
        [convertedColor getRed:&redFloatValue green:&greenFloatValue blue:&blueFloatValue alpha:NULL];
        
        redIntValue = redFloatValue * 255.99999f;
        greenIntValue = greenFloatValue * 255.99999f;
        blueIntValue = blueFloatValue * 255.99999f;
        
        redHexValue = [NSString stringWithFormat:@"%02x", redIntValue];
        greenHexValue = [NSString stringWithFormat:@"%02x", greenIntValue];
        blueHexValue = [NSString stringWithFormat:@"%02x", blueIntValue];
        
        return [NSString stringWithFormat:@"#%@%@%@", redHexValue, greenHexValue, blueHexValue];
    }
    
    return nil;
}
- (void)setHexColorString:(NSString *)hexColorString
{
    
}
@end
