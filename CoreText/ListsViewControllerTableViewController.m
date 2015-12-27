//
//  ListsViewControllerTableViewController.m
//  CoreText
//
//  Created by 何江浩 on 15/12/22.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import "ListsViewControllerTableViewController.h"
#import "MicroBlogTableViewCell.h"
#import "WebLog.h"


@interface ListsViewControllerTableViewController (){
    NSMutableArray *_logs;
}

@end

@implementation ListsViewControllerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化数据
    NSError *err;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"array" ofType:@"txt"];
    NSString *arrStr = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&err];
    debugLog(@"array:%@",arrStr);

    NSError *error;
    NSArray *dataSource = [NSJSONSerialization JSONObjectWithData:[arrStr dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:&error];
    _logs = [[NSMutableArray alloc] init];
    
    
    for (NSDictionary *dic in dataSource) {
        WebLog *webLog = [[WebLog alloc] initWithDictionary:dic];
        [_logs addObject:webLog];
    }
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _logs.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentify = @"WebLogCell";
    MicroBlogTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentify];
    NSInteger index = indexPath.row;
    if (!cell) {
        WebLog *weblog = _logs[index];
        cell = [[MicroBlogTableViewCell alloc] initWithWebLog:weblog reuseIdentifier:CellIdentify];
        
    }
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200.f;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
