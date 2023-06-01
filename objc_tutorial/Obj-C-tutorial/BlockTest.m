//
//  BlockTest.m
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/26.
//

#import "BlockTest.h"

@implementation BlockTest

- (id)init
{
    self = [super init];
    if (self) {
        someBlock = ^{
            NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"매개변수 x, 반환값 x는 클로져");
        };
        
        someBlockWithParam = ^(NSString *name){
            NSLog(@"%s, line: %d, name: %@", __func__, __LINE__, name);
        };
        
        someBlockWithMultiParam = ^(NSString *name, int age) {
            NSLog(@"%s, line: %d, name: %@", __func__, __LINE__, name);
            NSLog(@"%s, line: %d, age: %d", __func__, __LINE__, age);
        };
    }
    return self;
}

- (void)someFuntion {
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"매개변수 x 반환값 x");
    someBlock();
}

- (void)someFunctionWithParam:(NSString *)name {
    NSLog(@"%s, line: %d, name: %@", __func__, __LINE__, name);
    //원래였으면 someBlockWithParam에 대한 함수의 정의는 각각 다를 수 있어서 필요한 부분에서 보통 이루어지지만 여기서는 BolckTest라는 파일이 메모리에 올라가고 초기화(init)이 될 때 someBlockWithParam이 정의된다
    someBlockWithParam(name);
}

- (void)someFunctionWithMultiParams:(NSString *)name withAge:(int)age {
    NSLog(@"%s, line: %d, name: %@", __func__, __LINE__, name);
    NSLog(@"%s, line: %d, age: %d", __func__, __LINE__, age);
    someBlockWithMultiParam(name, age);
}

//반환값이 없고 NSString을 매개변수로 받는 done이라는 블럭을 매개변수로 받는 함수
- (void)someFunctionWithOptionalBlockParam:(void (^ __nullable)(NSString * _Nonnull))done {
    //done이라는 옵셔널
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"");
    if (done != nil) {
        done(@"완료 DoneBlock"); //done함수가 있을때만 실행함
    }
}

- (void)someFunctionWithBlockParam:(void (^)(NSString * _Nonnull))done {
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"<#comment#>");
    done(@"complete"); //done이라는 블럭호출(함수 호출)
}

- (void)someFunctionWithTypeDefBlockParam:(DoneBlock)done {
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"<#comment#>");
    done(@"complete typedef block");
}

@end
