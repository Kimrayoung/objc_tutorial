//
//  Friend+Info.m
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/25.
//

#import "Friend+Info.h"

@implementation Friend (Info)

- (NSString *)getInfo {
    //self를 하면 자기자신을 가지고 온다(즉, Friend를 가지고 온다)
    
    return [NSString stringWithFormat:@"친구이름: %@", self.nickname];
}
@end
