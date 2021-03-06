//
//  BonusCell.m
//  WinTreasure
//
//  Created by Apple on 16/6/17.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "BonusCell.h"

@implementation BonusCell

- (void)awakeFromNib {
    [super awakeFromNib];

    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        [self setLayoutMargins:UIEdgeInsetsZero];
    }
}

+ (instancetype)cellWithTableView:(UITableView *)tableview {
    static NSString *cellID = @"BonusCell";
    BonusCell *cell = [tableview dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = (BonusCell *)[[[NSBundle mainBundle] loadNibNamed:@"BonusCell" owner:self options:nil] lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)setModel:(BonusModel *)model {
    _model = model;
    _sumLabel.text = _model.bonusSum;
    _conditionLabel.text = _model.useCondition;
    _bonusNameLabel.text = _model.bonusName;
    _effectDateLabel.text = _model.effectiveTime;
    _indateLabel.text = _model.indate;
    if (_model.bonusType==1) {
        _bonusTypeImgView.image = IMAGE_NAMED(@"已过期");
    }
    _useButton.hidden = _model.bonusType==1 ? YES : NO;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
