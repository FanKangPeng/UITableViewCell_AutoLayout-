//
//  SYBlogModel.m
//  autoLayout自动布局－微博cell
//
//  Created by 申颖 on 16/1/6.
//  Copyright © 2016年 Ying. All rights reserved.
//

#import "SYBlogModel.h"

@implementation SYBlogModel

- (instancetype)initWithDict:(NSDictionary *)dict{
    
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)blogWithDict:(NSDictionary *)dict{
    
    return  [[self alloc]initWithDict:dict];
}

@end
