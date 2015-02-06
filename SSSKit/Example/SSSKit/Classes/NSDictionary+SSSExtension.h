//
//  NSDictionary+SSSExtension.h
//  SSSKit
//
//  Created by Doan Cuong on 2/6/15.
//  Copyright (c) 2015 Cuong Doan. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Category contains extension methods to help
 * parsing data from NSDictionary easier and avoid
 * crash
 */
@interface NSDictionary (SSSExtension)
/**
 * Retrieve object for a specific key and cast it into NSString
 *
 * Return: string empty if object doesn't exist or cast error
 */
- (NSString *)stringForKey:(NSString *)key;

/**
 * Retrieve object for a specific key and cast it into NSInteger
 *
 * Return: -1 if object doesn't exist or not a numeric value
 */
- (NSInteger)integerForKey:(NSString *)key;

/**
 * Retrieve object for a specific key and cast it into double
 *
 * Return: -1 if object doesn't exist or not a numeric value
 */
- (double)doubleForKey:(NSString *)key;

/**
 * Retrieve object for a specific key and cast it into int
 *
 * Return: -1 if object doesn't exist or not a numeric value
 */
- (int)intForKey:(NSString *)key;

/**
 * Retrieve object for a specific key and cast it into float
 *
 * Return: -1 if object doesn't exist or not a numeric value
 */
- (float)floatForKey:(NSString *)key;
@end
