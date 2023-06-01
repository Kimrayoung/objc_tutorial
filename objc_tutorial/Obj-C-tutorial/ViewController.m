//
//  ViewController.m
//  Obj-C-tutorial
//
//  Created by Jeff Jeong on 2023/01/02.
//

#import "ViewController.h"
#import "Friend.h"
#import "Friend+Info.h"
#import "NSDate+Helpers.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Cat * myCat = [[Cat alloc]init];
    
    //Cat클래스는 MyPet이라는 프로토콜을 준수하고 있기 때문에 callMyPet이라는 함수를 호출할 수 있음
    [self callMyPet:myCat];
    
    SEL btnSelector = @selector(onTestBtnClicked:);
    
    [_selectorTestButton addTarget:self action:btnSelector forControlEvents:UIControlEventTouchUpInside];
    
    Friend * aFriend = [[Friend alloc] init]; //인스턴스 메서드 생성
    
    [aFriend setNickname:@"hahha ramoo"]; //setter함수 호출 -> setter
    
    NSString * info = [aFriend getInfo];
    NSLog(@"info: %@", info);
    
    NSDate *today = [NSDate date];
    NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow: -(60.0f*60.0f*24.0f)];
    
    NSLog([today isToday] ? @"오늘입니다" : @"오늘이 아닙니다");
    NSLog(@"어제 날짜: %@",yesterday);
    NSLog([yesterday isToday] ? @"오늘입니다" : @"오늘이 아닙니다");
    
    //[Friend getAFriend]는 getAFriend라는 함수를 호출하는 것, 이 함수를 호출하면 aFriend의 메모리 주소를 가지고 온다(id가 메모리 주소를 의미하니까)
    //그러면 *createdFriend에는 aFriend의 메모리 주소를 가지고 있음
//    Friend *createdFriend = [Friend getAFriend]; //데이터 타입이 Friend인 createdFriend(변수명) 인스턴스 객체 생성
//
//    NSLog(@"createdFriend : %@", [createdFriend nickname]);
//
//    [self sayHello];
//    //int는 원시자료형으로 고유한 크기를 가지고 있어서 *필요없음
//    int randomNumber = [self getRandomNuber];
//
//    [self saySomethingWithParam:100];
//    [self saySomethingMultiParam:100 : @"hi"];
}

- (void)onTestBtnClicked:(UIButton *) sender { //UIButton * -> UIButton데이터 타입 변수의 포인터(즉, 메모리 주소)에 있는 값을 의미
    NSLog(@"name: %@ , btnTitle: %@",
          NSStringFromSelector(_cmd), sender.titleLabel.text);
}


- (void)sayHello {
    NSLog(@"안녕하세요");
}

//반환값이 int
- (int)getRandomNuber {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    return arc4random_uniform(100); //0-99사이의 무작위를 가지고 온다
}


/// <#Description#>
/// - Parameter number: <#number description#>
- (void)saySomethingWithParam: (NSInteger) number{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    NSLog(@"number: %d", number);
}


/// 매개변수를 여러개 가지는 함수
/// - Parameters:
///   - number: 숫자
///   - saying:
- (void)saySomethingMultiParam: (NSInteger) number :(NSString *) saying{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    NSLog(@"number: %d", number);
    NSLog(@"saying: %@", saying);
}

//MyPet이라는 프로토콜이 채택이 된 id
//MyPet이라는 프로토콜을 채택해서 메모리에 올라간 클래스만 callMyPet을 호출할 수 있음
//pet은 함수이름 (id<MyPet>)이 타입

-(void)callMyPet: (id<MyPet>)pet {
    //id에 대한 class 체크
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, [pet class]);
    
    [pet doCrying];
}

@end
