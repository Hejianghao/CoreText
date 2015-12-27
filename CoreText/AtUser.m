//
//  AtUser.m
//  CoreText
//
//  Created by 何江浩 on 15/12/25.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import "AtUser.h"

@implementation AtUser

- (id) initWithDictionary:(NSDictionary *)dic {
    self = [super init];
    if (self) {
        self.nickname = [dic objectForKey:@"nickname"];
        self.userId   = [dic objectForKey:@"userId"];
    }
    return self;
}

@end
