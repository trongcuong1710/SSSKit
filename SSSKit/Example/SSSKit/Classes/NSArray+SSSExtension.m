//
//  NSArray+SSSExtension.m
//  SSSKit
//
//  Created by Doan Cuong on 2/6/15.
//  Copyright (c) 2015 Cuong Doan. All rights reserved.
//

#import "NSArray+SSSExtension.h"
#import "NSString+SSSExtension.h"

@implementation NSArray (SSSExtension)
/**
 * Safely retrieve object at an index
 *
 * Return: nil if index out of range
 */
- (id)safeObjectAtIndex:(NSInteger)index
{
    id result;
    
    if (index >= [self count])
    {
        result = nil;
    }
    else
    {
        result = [self objectAtIndex:index];
    }
    
    return result;
}

/**
 * Retrive object at an index and cast it into string
 *
 * Return: empty string if index out of range
 */
- (NSString *)stringAtIndex:(NSInteger)index
{
    id obj = [self safeObjectAtIndex:index];
    NSString *result;
    
    if (obj == nil)
    {
        result = @"";
    }
    else
    {
        result = [NSString stringWithFormat:@"%@", obj];
    }
    
    return result;
}

/**
 * Retrieve object at an index and cast it into double
 *
 * Return: -1 if index out of range or cast error
 */
- (double)doubleAtIndex:(NSInteger)index
{
    NSString *str = [self stringAtIndex:index];
    double result;
    
    if ([str isNumeric])
    {
        result = [str doubleValue];
    }
    else
    {
        result = -1;
    }
    
    return result;
}

/**
 * Retrieve object at an index and cast it into integer
 *
 * Return: -1 if index out of range or cast error
 */
- (NSInteger)integerAtIndex:(NSInteger)index
{
    double result = [self doubleAtIndex:index];
    
    return (long)result;
}

/**
 * Retrieve object at an index and cast it into int
 *
 * Return: -1 if index out of range or cast error
 */
- (int)intAtIndex:(NSInteger)index
{
    double result = [self doubleAtIndex:index];
    
    return (int)result;
}

/**
 * Retrieve object at an index and cast it into float
 *
 * Return: -1 if index out of range or cast error
 */
- (float)floatAtIndex:(NSInteger)index
{
    double result = [self doubleAtIndex:index];
    
    return (float)result;
}
@end
