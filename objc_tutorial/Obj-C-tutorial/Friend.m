//
//  Friend.m
//  Obj-C-tutorial
//
//  Created by Jeff Jeong on 2023/01/02.
//

#import <Foundation/Foundation.h>
#import "Friend.h"

// 클래스 확장 - 클래스 안에서 사용
@interface Friend ()
{
    NSString *_name;
}
@end

// 구현부
@implementation Friend

- (void)sayHello{
    
    self->_name = @"호롤롤로";
    
    self->_nickname = @"ramoo";
    
    NSLog(@"안녕하세요?!?! %@", self->_name);
}

+ (void)sayGoodbye {
    NSLog(@"잘가요!!");
}

+ (id)getAFriend {
    Friend *aFriend = [[Friend alloc] init]; //friend를 메모리에 올리고 초기화
    
    [aFriend setNickname: @"호호호"]; //aFriend 인스턴스 객체의 setNickname이라는 프로퍼티 변경
    
    return aFriend;
}
@end
