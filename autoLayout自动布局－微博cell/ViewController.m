//
//  ViewController.m
//  autoLayout自动布局－微博cell
//
//  Created by 申颖 on 16/1/6.
//  Copyright © 2016年 Ying. All rights reserved.
//

#import "ViewController.h"
#import "SYBlogModel.h"
#import "SYBlogCell.h"

@interface ViewController ()

@property(nonatomic,strong)NSArray *microBlogs;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置自动计算高度 ios6.3之前就这一句话就可以了
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    //预设高度 iOS6.3之后，需要设置其预估的高度，其默认是44，其值约接近tableview的高度越好。
    self.tableView.estimatedRowHeight = 44;

}

//隐藏状态栏
- (BOOL)prefersStatusBarHidden{
    return YES;
}
- (NSArray *)microBlogs{
    
    if (_microBlogs ==nil) {
        //  1.读取plsit文件
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"microBlogs.plist" ofType:nil ]];
        //  2.字典转模型
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            SYBlogModel *blogModel = [SYBlogModel blogWithDict:dict];
            [tempArray addObject:blogModel];
        }
        _microBlogs = tempArray;
    }
    return _microBlogs;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.microBlogs.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //    1.创建cell
    static NSString *ID = @"blog";
    SYBlogCell  *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    //    2.赋值
    SYBlogModel *blogModel = self.microBlogs[indexPath.row];
    cell.blog = blogModel;
    
    //    3.返回cell
    return cell;
    
}


@end
