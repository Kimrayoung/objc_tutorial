//
//  MyPet.h
//  Obj-C-tutorial
//
//  Created by 김라영 on 2023/06/01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyPet <NSObject>

- (void)doCrying;

@optional
- (void)saySomething;

@end

NS_ASSUME_NONNULL_END
