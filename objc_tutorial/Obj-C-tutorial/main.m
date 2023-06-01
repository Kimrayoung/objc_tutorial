//
//  main.m
//  Obj-C-tutorial
//
//  Created by Jeff Jeong on 2023/01/02.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Pet.h"
#import "Cat.h"
#import "BlockTest.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
//        Pet* myDog = [[Pet alloc]init];
//        [myDog doCry: @"댕댕이"];
//
//        Cat *myCat = [[Cat alloc]init];
//        Cat *myCat2 = [[Cat alloc]initWithAge:23];
//        Cat *myCat3 = [[Cat alloc]initWithName:@"ramoo"];
//        Cat *myCat4 = [[Cat alloc]initWithNameAndAge:@"ramoo" age:26];
        
        BlockTest *firstBlockTest = [[BlockTest alloc] init];
        
        [firstBlockTest someFuntion];
        [firstBlockTest someFunctionWithParam: @"ramoo"];
        [firstBlockTest someFunctionWithMultiParams: @"ramoo" withAge:23];
        
        //done이라는 블럭이 nil(즉, 값이 없음)
        [firstBlockTest someFunctionWithOptionalBlockParam:nil];
        
        //done이라는 블럭에 대한 정의를 여기서 해준다
        [firstBlockTest someFunctionWithOptionalBlockParam:^(NSString * value) {
            NSLog(@"%s, line: %d, value: %@", __func__, __LINE__, value);
        }];
        
        [firstBlockTest someFunctionWithBlockParam:^(NSString * name) {
            //done이라는 블럭에 대한 정의
            NSLog(@"%s, line: %d, %@", __func__, __LINE__, name);
        }];
        
        [firstBlockTest someFunctionWithTypeDefBlockParam:^(NSString * name) {
            //done이란느 블럭에 대한 정의
            NSLog(@"%s, line: %d, %@", __func__, __LINE__, name);
        }];
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
