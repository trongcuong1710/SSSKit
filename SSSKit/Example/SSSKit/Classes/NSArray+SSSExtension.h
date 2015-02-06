//
//  NSArray+SSSExtension.h
//  SSSKit
//
//  Created by Doan Cuong on 2/6/15.
//  Copyright (c) 2015 Cuong Doan. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Category contains extension which help you 
 * parse data from NSArray easier and avoid crash
 */
@interface NSArray (SSSExtension)
/**
 * Safetly retrieve object at an index
 *
 * Return: nil if index out of range
 */
- (id)safeObjectAtIndex:(NSInteger)index;

/**
 * Retrieve object at an index and cast it into string
 *
 * Return: empty string if object is nil
 */
- (NSString *)stringAtIndex:(NSInteger)index;

/**
 * Retrieve object at an index and cast it into double
 *
 * Return: -1 if object is not a numeric or cast error
 */
- (double)doubleAtIndex:(NSInteger)index;

/**
 * Retrieve object at an index and cast it into integer
 *
 * Return: -1 if object is not a numeric or cast error
 */
- (NSInteger)integerAtIndex:(NSInteger)index;

/**
 * Retrieve object at an index and cast it into int
 *
 * Return: -1 if object is not a numeric or cast error
 */
- (int)intAtIndex:(NSInteger)index;

/**
 * Retrieve object at an index and cast it into float
 *
 * Return: -1 if object is not a numeric or cast error
 */
- (float)floatAtIndex:(NSInteger)index;
@end
