//
//  NSString+SSSExtension.h
//  SSSKit
//
//  Created by Doan Cuong on 2/6/15.
//  Copyright (c) 2015 Cuong Doan. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Category's contains various of extension method
 * which help your life easier when working with NSString
 */
@interface NSString (SSSExtension)
/**
 * Check whether a string can be cast into numeric data type
 *
 * Return: YES / NO
 */
- (BOOL)isNumeric;
@end
