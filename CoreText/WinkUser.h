//
//  WinkUser.h
//  CoreText
//
//  Created by 何江浩 on 15/12/25.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WinkUser : NSObject

@property (nonatomic, strong) NSString *releaseTime;

@property (nonatomic, strong) NSString *nickname;

@property (nonatomic, strong) NSString *userId;

@property (nonatomic, strong) NSString *commentTime;

@property (nonatomic, assign) NSInteger winkCommentType;

@property (nonatomic, strong) NSString *avatar;

- (id) initWithDictionary:(NSDictionary *)dic;

@end
