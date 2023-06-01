//
//  Friend+Info.h
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/25.
//

#import "Friend.h"

NS_ASSUME_NONNULL_BEGIN

//Friend 클래스에 추가적인 함수를 만들어줌
@interface Friend (Info)


/// Friend정보 가지고 오기
/// 반환값 NSString -> NSString이 반환값이므로 *필요
- (NSString *)getInfo;
@end

NS_ASSUME_NONNULL_END
