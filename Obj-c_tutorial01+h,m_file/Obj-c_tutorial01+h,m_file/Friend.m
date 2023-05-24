//
//  Friend.m
//  Obj-c_tutorial01+h,m_file
//
//  Created by 김라영 on 2023/05/24.
//

#import <Foundation/Foundation.h>
#import "Friend.h" //반드시 해당하는 헤더파일을 가지고 있어야 한다

//클래스 확장 -> 클래스 안에서 사용
@interface Friend () //클래스에서 확장이 된것 -> 안에서 사용할 것 들을 정의
{
    NSString *_name; //name이라는 이름의 문자열이 있음
}
@end

//클래스 구현부
@implementation Friend

//methods -> Friend가 가진 메서드들을 실제로 구현
- (void)sayHello{
    self->_name = @"ramoo"; //클래스 내부에서만 사용
    //print는 NSLog로 가능하다
    NSLog(@"안녕하세요! @%입니다", self->_name);
}

+ (void)sayGoodbye{
    NSLog(@"잘가!");
}
@end
