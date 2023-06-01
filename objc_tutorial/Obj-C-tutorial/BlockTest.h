//
//  BlockTest.h
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//일반 타입의 typedef사용법
typedef NSString * MyString;

//typedef block사용법
//DoneBlock이라는 별칭이 생성됨
typedef void(^DoneBlock)(NSString *);

@interface BlockTest : NSObject
{
    NSString * name;
    MyString myName;
    //변수 선언 하는 부분
    
    //반환값 없고 매개변수 없는 block
    void (^someBlock)(void);
    void (^someBlockWithParam)(NSString *);
    void (^someBlockWithMultiParam)(NSString *, int);
}

- (void)someFuntion;

- (void)someFunctionWithParam:(NSString *)name;

//withAge는 라벨부분, 실제 함수 안에서 사용할 떄는 age가 매개변수명으로 사용됨
- (void)someFunctionWithMultiParams:(NSString *)name withAge:(int)age;

- (void)someFunctionWithOptionalBlockParam: (void(^ __nullable)(NSString *))done;

//block을 매개변수로 가지는 함수 -> 반환이 없고 매개변수를 string으로 받는 함수
- (void)someFunctionWithBlockParam: (void(^)(NSString *))done;
//typedef 별칭사용
- (void)someFunctionWithTypeDefBlockParam:(DoneBlock)done;

@end

NS_ASSUME_NONNULL_END
