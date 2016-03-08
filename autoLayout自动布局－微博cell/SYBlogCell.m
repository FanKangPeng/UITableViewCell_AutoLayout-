//
//  SYBlogCell.m
//  autoLayout自动布局－微博cell
//
//  Created by 申颖 on 16/1/6.
//  Copyright © 2016年 Ying. All rights reserved.
//

#import "SYBlogCell.h"
#import "SYBlogModel.h"

@interface SYBlogCell()
@property (weak, nonatomic) IBOutlet UILabel *nameView;
@property (weak, nonatomic) IBOutlet UIImageView *headView;
@property (weak, nonatomic) IBOutlet UILabel *textView;

//高度的约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightContstant;

//注意：在给pictureView设置约束时，应该设置5个约束才行，不要忘了设置其底部的约束
@property (weak, nonatomic) IBOutlet UIImageView *pictureView;

@end

@implementation SYBlogCell

- (void)setBlog:(SYBlogModel *)blog{
    
    _blog = blog;
    self.headView.image = [UIImage imageNamed:blog.icon];
    self.headView.layer.cornerRadius = 20;
    self.headView.clipsToBounds = YES;
    self.nameView.text = blog.name;
    self.textView.text = blog.text;
    
    if (blog.picture) {
        
        self.pictureView.image = [UIImage imageNamed:blog.picture];
        self.pictureView.hidden = NO;
        self.heightContstant.constant = 60;
        
    }else{
        
        self.pictureView.hidden = YES;
        self.heightContstant.constant = 0;
    }
}


@end
