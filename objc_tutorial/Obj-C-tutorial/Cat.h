//
//  Cat.h
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/26.
//

#import <Foundation/Foundation.h>
#import "MyPet.h"

NS_ASSUME_NONNULL_BEGIN

@interface Cat : NSObject <MyPet>
{
    NSString* name;
    int age;
}

//자기 자신을 반환함 -> id
- (id)initWithName: (NSString *) nameValue;
- (id)initWithAge: (int) ageValue;
- (id)initWithNameAndAge: (NSString *)nameValue age:(int)ageValue;

@end

NS_ASSUME_NONNULL_END
