//
//  Comment.m
//  CoreText
//
//  Created by 何江浩 on 15/12/25.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import "Comment.h"

@implementation Comment

- (id) initWithDictionary:(NSDictionary *)dic {
    self = [super init];
    if (self) {
        self.avatar = [dic objectForKey:@"avatar"];
        self.commentId = [dic objectForKey:@"commentId"];
        self.commentText = [dic objectForKey:@"commentText"];
        self.commentTime = [dic objectForKey:@"commentTime"];
        self.nickname = [dic objectForKey:@"nickname"];
        self.releaseTime = [dic objectForKey:@"releaseTime"];
        self.sayType = [dic objectForKey:@"sayType"];
        self.toAvatar = [dic objectForKey:@"toAvatar"];
        self.toNickname = [dic objectForKey:@"toNickname"];
        self.toUserId = [dic objectForKey:@"toUserId"];
        self.userId = [dic objectForKey:@"userId"];
    }
    return self;
}

@end
