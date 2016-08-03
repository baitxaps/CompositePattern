//
//  Branch.h
//  CompositePattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IBranch.h"

@interface Branch : NSObject<IBranch>
- (instancetype)initWithName:(NSString *)name position:(NSString *)position
                      salary:(NSInteger)salary;
@end
