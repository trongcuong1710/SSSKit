//
//  NSDictionary+SSSExtension.m
//  SSSKit
//
//  Created by Doan Cuong on 2/6/15.
//  Copyright (c) 2015 Cuong Doan. All rights reserved.
//

#import "NSDictionary+SSSExtension.h"
#import "NSString+SSSExtension.h"

/**
 * Category contains extension methods to help
 * parsing data from NSDictionary easier and avoid
 * crash
 */
@implementation NSDictionary (SSSExtension)
/**
 * Retrieve object for a specific key and cast it into NSString
 *
 * Return: string empty if object doesn't exist or cast error
 */
- (NSString *)stringForKey:(NSString *)key
{
    id obj = [self objectForKey:key];
    
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
 * Retrieve object for a specific key and cast it into NSInteger
 *
 * Return: -1 if object doesn't exist or not a numeric value
 */
- (NSInteger)integerForKey:(NSString *)key
{
    NSInteger result = (long)[self doubleForKey:key];
    
    return result;
}

/**
 * Retrieve object for a specific key and cast it into double
 *
 * Return: -1 if object doesn't exist or not a numeric value
 */
- (double)doubleForKey:(NSString *)key
{
    NSString *str = [self stringForKey:key];
    double result;
    
    if ([str isNumeric])
    {
        result = -1;
    }
    else
    {
        result = [str doubleValue];
    }
    
    return result;
}

/**
 * Retrieve object for a specific key and cast it into int
 *
 * Return: -1 if object doesn't exist or not a numeric value
 */
- (int)intForKey:(NSString *)key
{
    int result = (int)[self doubleForKey:key];
    
    return result;
}

/**
 * Retrieve object for a specific key and cast it into float
 *
 * Return: -1 if object doesn't exist or not a numeric value
 */
- (float)floatForKey:(NSString *)key
{
    float result = (float)[self doubleForKey:key];
    
    return result;
}
@end
