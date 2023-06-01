//
//  Cat.m
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/26.
//

#import "Cat.h"

@implementation Cat

- (id)init {
    //Cat이 NSObject를 상속받고 있기 때문에 super init을 해주는 것
    self = [super init];
    
    //메모리에 객체가 올라가있다면
    if (self) {
        //인스턴스 메소드 기본 초기화
        age = 0;
        name = @"이름없음";
    }
    return self;
}

-(id) initWithAge:(int)ageValue {
    self = [super init];
    if (self) {
        //age를 파라미터로 변경
        age = ageValue;
        name = @"이름없음";
    }
    return self;
}

-(id) initWithName: (NSString *)nameValue {
    self = [super init];
    if (self) {
        //age를 파라미터로 변경
        age = 0;
        name = nameValue;
    }
    return self;
}

-(id) initWithNameAndAge:(NSString *)nameValue age:(int)ageValue {
    self = [super init];
    if (self) {
        //age를 파라미터로 변경
        age = ageValue;
        name = nameValue;
    }
    return self;
}

- (void)doCrying {
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"");
}

@end
