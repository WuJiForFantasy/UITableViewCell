//
//  CustomCell2.m
//  tableviewbutongcell
//
//  Created by apple on 15/10/19.
//  Copyright (c) 2015年 tqh. All rights reserved.
//

#import "CustomCell2.h"

@interface CustomCell2 ()

@end

@implementation CustomCell2

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        _label = [[UILabel alloc]initWithFrame:CGRectMake(100, 0, 100, 30)];
//        _label.text = @"333";
//        [self.contentView addSubview:_label];
        
        _textfeild = [[UITextField alloc]initWithFrame:CGRectMake(100, 0, 100, 30)];
        _textfeild.backgroundColor = [UIColor redColor];
//        _textfeild.delegate = self;
        [self.contentView addSubview:_textfeild];
        
    }
    return self;
}


//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
//    _textFeildTextContext = textField.text;
//    
//    return YES;
//}

//- (void)setTextFeildTextContext:(NSString *)textFeildTextContext {
//    _textFeildTextContext = textFeildTextContext;
//}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
