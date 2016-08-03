//
//  Branch.m
//  CompositePattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Branch.h"
@interface Branch ()
@property (nonatomic,strong)NSString *name;    /// 领导也是人，也有名字
@property (nonatomic,strong)NSString *position;/// 领导和领导不同，也是职们区别
@property (nonatomic,assign)NSInteger salary;  /// 领导也是拿薪水的
@property (nonatomic,strong)NSMutableArray *subordinateList;/// 领导下边有哪些下级领导和小兵
@end

@implementation Branch

- (instancetype)initWithName:(NSString *)name position:(NSString *)position
                      salary:(NSInteger)salary {
    if (self = [super init]) {
        _name = name;
        _position = position;
        _salary = salary;
        _subordinateList = [NSMutableArray new];
    }
    return self;
}

// 增加一个下属，可能是小头目，也可能是个小兵
- (void)addSubordinate:(id<ICorp>)corp {
    [self.subordinateList addObject:corp];
}

// 我有哪些下属
- (NSArray*)subordinate {
    return self.subordinateList;
}

// 领导也是人，他也有信息
- (NSString *)info {
    NSString *mg = [NSString stringWithFormat:@"姓名:%@\t职位:%@\t薪水:%ld",_name,_position,_salary];
    
    return mg;
}

@end
