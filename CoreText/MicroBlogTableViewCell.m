//
//  MicroBlogTableViewCell.m
//  CoreText
//
//  Created by 何江浩 on 15/12/22.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import "MicroBlogTableViewCell.h"
#import "WebLog.h"
#import "RichTextView.h"

@interface MicroBlogTableViewCell (){
    UIImageView *avatarImageView;
}

@end

@implementation MicroBlogTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

/**
 *  通过WebLog对象来初始化cell
 *  @params weblog 日志对象
 *  @params reuseIdentifier  重用标志
 *  @return
 */
- (instancetype) initWithWebLog:(WebLog *)webLog reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    if (self) {
        //self.textLabel.text = webLog.momentsText;
        RichTextView *textView = [[RichTextView alloc] initWithFrame:CGRectMake(0, 10, [[UIScreen mainScreen] bounds].size.width, 200)];
        textView.backgroundColor = [UIColor clearColor];
        [self addSubview:textView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
