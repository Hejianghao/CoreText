//
//  MicroBlogTableViewCell.h
//  CoreText
//
//  Created by 何江浩 on 15/12/22.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebLog;
@interface MicroBlogTableViewCell : UITableViewCell

- (instancetype) initWithWebLog:(WebLog *)webLog reuseIdentifier:(NSString *)reuseIdentifier;

@end
