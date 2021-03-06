//
//  XHAlbumTableViewCell.m
//  MessageDisplayExample
//
//  Created by qtone-1 on 14-5-19.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "XHAlbumTableViewCell.h"

#import "XHAlbumRichTextView.h"

@interface XHAlbumTableViewCell ()

@property (nonatomic, strong) XHAlbumRichTextView *albumRichTextView;

@end

@implementation XHAlbumTableViewCell

+ (CGFloat)calculateCellHeightWithAlbum:(XHAlbum *)currentAlbum {
    return [XHAlbumRichTextView calculateRichTextHeightWithAlbum:currentAlbum];
}

#pragma mark - Propertys

- (void)setCurrentAlbum:(XHAlbum *)currentAlbum {
    _currentAlbum = currentAlbum;
    
    self.textLabel.text = @"这是一个朋友圈的Cell哦！富文本的即将开始！";
}

- (XHAlbumRichTextView *)albumRichTextView {
    if (!_albumRichTextView) {
        _albumRichTextView = [[XHAlbumRichTextView alloc] initWithFrame:CGRectZero];
    }
    return _albumRichTextView;
}

#pragma mark - Life Cycle

- (void)setup {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [self.contentView addSubview:self.albumRichTextView];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
