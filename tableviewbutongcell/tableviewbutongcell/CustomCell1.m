//
//  CustomCell1.m
//  tableviewbutongcell
//
//  Created by apple on 15/10/19.
//  Copyright (c) 2015年 tqh. All rights reserved.
//

#import "CustomCell1.h"

@implementation CustomCell1

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(20, 0, 100, 30)];
        _label.text = @"222";
        [self.contentView addSubview:_label];
    }
    return self;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
