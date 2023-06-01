//
//  Pet.h
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/05/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pet : NSObject

//name이라는 변수는 readonly이기 때문에 외부에서 접근은 가능하지만 변경은 안된다
@property (readonly, copy) NSString* name;

-(void)doCry: (NSString *)name;

@end

NS_ASSUME_NONNULL_END
