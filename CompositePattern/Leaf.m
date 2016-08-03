//
//  Leaf.m
//  CompositePattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Leaf.h"

@interface Leaf ()

@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString *position;
@property (nonatomic,assign)NSInteger salary;

@end

@implementation Leaf

- (instancetype)initWithName:(NSString *)name positon:(NSString *)position salary:(NSInteger)salary {
    if (self = [super init]) {
        _name = name;
        _position = position;
        _salary = salary;
    }
    return self;
}

- (NSString *)info {
    NSString *mg = [NSString stringWithFormat:@"姓名:%@\t职位:%@\t薪水:%ld",_name,_position,_salary];
    
    return mg;
}


@end
