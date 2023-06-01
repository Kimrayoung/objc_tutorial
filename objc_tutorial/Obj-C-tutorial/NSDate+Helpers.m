//
//  NSDate+Helpers.m
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/25.
//

#import "NSDate+Helpers.h"


@implementation NSDate (Helpers)

- (BOOL)isToday {
    return [[NSCalendar currentCalendar] isDateInToday:self];
}

@end
