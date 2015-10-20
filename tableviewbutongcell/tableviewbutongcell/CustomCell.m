//
//  CustomCell.m
//  tableviewbutongcell
//
//  Created by apple on 15/10/19.
//  Copyright (c) 2015年 tqh. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
        _label.text = @"111";
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
