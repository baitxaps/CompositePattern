//
//  IBranch.h
//  CompositePattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICorp.h"

@protocol IBranch <NSObject,ICorp>

- (void)addSubordinate:(id<ICorp>)corp;

- (NSArray*)subordinate;

@end
