//
//  SYBlogModel.h
//  autoLayout自动布局－微博cell
//
//  Created by 申颖 on 16/1/6.
//  Copyright © 2016年 Ying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SYBlogModel : NSObject

@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *text;
@property(nonatomic,copy)NSString *picture;
@property(nonatomic,copy)NSString *name;

@property(nonatomic,assign,getter=isVip)BOOL vip;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)blogWithDict:(NSDictionary *)dict;

@end
