//
//  WinkUser.m
//  CoreText
//
//  Created by 何江浩 on 15/12/25.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import "WinkUser.h"

@implementation WinkUser

- (id) initWithDictionary:(NSDictionary *)dic {
    self = [super init];
    if (self) {
        self.avatar          = [dic objectForKey:@"avatar"];
        self.commentTime     = [dic objectForKey:@"commentTime"];
        self.nickname        = [dic objectForKey:@"nickname"];
        self.releaseTime     = [dic objectForKey:@"releaseTime"];
        self.userId          = [dic objectForKey:@"userId"];
        self.winkCommentType = [[dic objectForKey:@"winkCommentType"] integerValue];
    }
    return self;
}

@end
