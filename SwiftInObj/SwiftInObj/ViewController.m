//
//  ViewController.m
//  SwiftInObj
//
//  Created by 김라영 on 2023/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"ViewController - ViewDidLoad()");
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"ViewController - ViewDidAppear()");
    
    CoverVC *coverVC = [[CoverVC alloc] init]; //alloc으로 CoverVC가 올라갈 메모리 할당, init -> CoverVC 초기화
    
    [self presentViewController:coverVC animated:YES completion:nil];
}


@end
