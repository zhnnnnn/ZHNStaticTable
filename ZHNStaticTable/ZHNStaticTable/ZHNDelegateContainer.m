//
//  ZHNDelegateContainer.m
//  ZHNStaticTable
//
//  Created by zhn on 2018/3/21.
//  Copyright © 2018年 zhn. All rights reserved.
//

#import "ZHNDelegateContainer.h"

@interface ZHNDelegateContainer()
@property (nonatomic,copy) NSArray *delegates;
@end

@implementation ZHNDelegateContainer
+ (instancetype)zhn_containerWithDelegates:(NSArray<id> *)delegates {
    ZHNDelegateContainer *container = [[ZHNDelegateContainer alloc]init];
    container.delegates = delegates;
    return container;
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    for (id delegate in self.delegates) {
        if ([delegate respondsToSelector:aSelector]) {
            return YES;
        }
    }
    return NO;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    for (id delegate in self.delegates) {
        return [delegate methodSignatureForSelector:aSelector];
    }
    return nil;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL selector = [anInvocation selector];
    for (id delegate in self.delegates) {
        if ([delegate respondsToSelector:selector]) {
            [anInvocation invokeWithTarget:delegate];
        }
    }
}
@end
