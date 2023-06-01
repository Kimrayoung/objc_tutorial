//
//  Pet.m
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/26.
//

#import "Pet.h"

@interface Pet ()
{
    //클래스 내부에서만 사용할 변수(인스턴스 변수)
    NSNumber * age;
}

//여기서 재선언을 함
//@property는 기본 값이 readwrite이다
@property (readwrite, copy) NSString* name; //name 재선언

@end
@implementation Pet

//id를 통해서 초기화할때 Pet의 메모리 주소를 가지고 온다
//age는 객체가 생성할 때 메모리 주소에 데이터가 들어간다
- (id)init
{
    self = [super init]; //부모가 가진 init생성자로 맨 처음에 메모리에 올려준다
    //만약에 return해주기 전에 값이 설정이 되면 인스턴스 메서드에 값 넣어줌
    if (self) {
        age = [NSNumber numberWithInt:3];
    }
    return self;
}

-(void) doCry: (NSString *) name{
    [self setName:@"ramoo"]; //원래 name은 readonly여서 재선언이 안되지만 class extension을 이용해서 재선언이 가능하도록 함 -> setName을 통해서 이름변경
    
    NSLog(@"doCry - name: %@", _name); //_name은 프로퍼티 name의 인스턴스 변수
    NSLog(@"doCry - age: %@", age);
}

@end
