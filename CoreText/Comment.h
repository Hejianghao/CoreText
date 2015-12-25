//
//  Comment.h
//  CoreText
//
//  Created by 何江浩 on 15/12/25.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Comment : NSObject

@property (nonatomic, strong) NSString *commentText;

@property (nonatomic, strong) NSString *avatar;

@property (nonatomic, strong) NSString *userId;

@property (nonatomic, strong) NSString *commentType;

@property (nonatomic, strong) NSString *toAvatar;

@property (nonatomic, strong) NSString *toUserId;

@property (nonatomic, strong) NSString *commentTime;

@property (nonatomic, strong) NSString *sayType;

@property (nonatomic, strong) NSString *commentId;

@property (nonatomic, strong) NSString *toNickname;

@property (nonatomic, strong) NSString *releaseTime;

@property (nonatomic, strong) NSString *nickname;

- (id) initWithDictionary:(NSDictionary *)dic;

@end
