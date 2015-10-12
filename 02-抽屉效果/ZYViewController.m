
//
//  ZYViewController.m
//  02-抽屉效果
//
//  Created by zhuyi on 15/9/18.
//  Copyright © 2015年 zhuyi. All rights reserved.
//

#import "ZYViewController.h"

@interface ZYViewController ()

@end

@implementation ZYViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return 3;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"主标题为:%ld",indexPath.row];
    cell.detailTextLabel.text = @"子标题";
    cell.imageView.image = [UIImage imageNamed:@"1"];
    
    //    cell.textColor = [UIColor blueColor];
    cell.detailTextLabel.textColor = [UIColor blueColor];
    return cell;
}

@end
