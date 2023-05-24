//
//  Friend.h
//  Obj-c_tutorial01+h,m_file
//
//  Created by 김라영 on 2023/05/24.
//header파일에 해당하므로 외부에서 접근이 가능하다

#ifndef Friend_h
#define Friend_h
#import <UIKit/UIKit.h>

//NSObject가 가장 최상단에 있는 클래스이다 -> 즉, 대부분의 클래스는 NSObject를 상속받고 있다
@interface Friend : NSObject //Friend는 NSObject를 상속받고 있다

//여기에 함수, 멤버변수, 프로퍼티 선언 가능

//외부에서 접근 가능한 녀석들 - 멤버 변수
@property NSString *nickName; //nickName이라는 이름의 문자열이 존재함

//객체를 생성하고 접근할 수 있는 메서드 - 인스턴스 메서드
- (void)sayHello; //sayHello이라는 이름의 함수인데 반환값, 없음

//객체를 생성하지 않아도 접근할 수 있는 메서드 - 클래스 메서드(스태틱 메서드)
+ (void)sayGoodbye;

@end

#endif /* Friend_h */
