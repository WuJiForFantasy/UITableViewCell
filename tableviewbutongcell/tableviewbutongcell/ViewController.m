//
//  ViewController.m
//  tableviewbutongcell
//
//  Created by apple on 15/10/19.
//  Copyright (c) 2015年 tqh. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "CustomCell1.h"
#import "CustomCell2.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate> {
    UITableView *_tableveiw;
}

@property (nonatomic,strong)NSMutableArray *arrayWithCell3;

@end




@implementation ViewController

-(NSMutableArray *)arrayWithCell3 {
    if (!_arrayWithCell3) {
        _arrayWithCell3 = [[NSMutableArray alloc]init];
        for (int i = 0; i < 10; i ++) {
            [_arrayWithCell3 addObject:@"12345"];
        }
    }
    return _arrayWithCell3;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableveiw = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds)-64) style:UITableViewStyleGrouped];
    _tableveiw.delegate = self;
    _tableveiw.dataSource = self;
    [_tableveiw registerClass:[CustomCell class] forCellReuseIdentifier:@"cellID"];
    [_tableveiw registerClass:[CustomCell1 class] forCellReuseIdentifier:@"cellID1"];
    [_tableveiw registerClass:[CustomCell2 class] forCellReuseIdentifier:@"cellID2"];
    [self.view addSubview:_tableveiw];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayWithCell3.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
        CustomCell *newcell = (CustomCell *)cell;
        newcell.label.text = @"00000";
        
    }else if (indexPath.section == 1){
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellID1"];
    }else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellID2"];
        CustomCell2 *newcell = (CustomCell2 *)cell;
        newcell.textfeild.delegate = self;
        newcell.textfeild.tag = indexPath.row;
        newcell.textfeild.text = self.arrayWithCell3[indexPath.row];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    self.arrayWithCell3[textField.tag] = [textField.text mutableCopy];
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView endEditing:YES];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        
        return 50;
        
    }else if (indexPath.section == 1){
        return 30;
    }else {
        return 80;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
