//
//  ViewController.m
//  Obj-c_tutorial01+h,m_file
//
//  Created by 김라영 on 2023/05/23.
//

#import "ViewController.h"
//Friend라는 클래스를 사용하기 위해서는 Friend헤더파일을 import 해주는게 반드시 필요하다
#import "Friend.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //원시자료형을 제외하고는 모두 메모리 참조이므로 *가 필요하다
    //alloc -> 메모리 공간에 자리 차지(인스턴스를 만들어서 메모리 공간에 넣음)
    //heap이라는 공간에 올라감, 그리고 그 메모리 주소를 stack에서 가지고 있음
    
    Friend *myFriend = [[Friend alloc] init]; //myFriend라는 Friend클래스를 실제로 생성(객체 생성)
    
    myFriend.nickName = @"라무"; //nickName은 외부에서 접근이 가능하다
    NSLog(@"내 별명은 %@입니다",myFriend.nickName);
    
//    myFriend._name -> name은 클래스 안에서만 사용이 가능하다
    
    [myFriend sayHello]; //myFriend가 가진 sayHello라는 함수 호출
    
    [Friend sayGoodbye]; //sayGoodbye는 static method이므로 메모리에 올리지 않고도 부를 수 있음
}


@end
