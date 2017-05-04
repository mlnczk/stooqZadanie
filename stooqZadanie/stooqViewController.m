//
//  StooqViewController.m
//  stooqZadanie
//
//  Created by Euvic on 04.05.2017.
//  Copyright © 2017 Me. All rights reserved.
//

#import "StooqViewController.h"
#import "StooqTableViewCell.h"
#import "APIManager.h"
#import "ModelData.h"
#import <MBProgressHUD.h>

@interface StooqViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *valueArray;
@property (weak, nonatomic) IBOutlet UITableView * tableView;
@property (nonatomic, strong) UIRefreshControl *refreshControl;

@end

@implementation StooqViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    
     [self.tableView registerNib:[UINib nibWithNibName:[[StooqTableViewCell class] description] bundle:nil] forCellReuseIdentifier:[[StooqTableViewCell class] description]];
    
     [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.valueArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    StooqTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[[StooqTableViewCell class] description] forIndexPath:indexPath];
    
   [cell customizeCell:self.valueArray[indexPath.row]];
    
    return cell;
}

- (void)downloadDataFromAPI{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
