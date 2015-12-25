//
//  WebLog.m
//  CoreText
//
//  Created by 何江浩 on 15/12/24.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import "WebLog.h"

#import "AtUser.h"
#import "WinkUser.h"
#import "Comment.h"

@interface WebLog ()


@end


@implementation WebLog

- (instancetype) initWithDictionary:(NSDictionary *)weblogDic {
    self = [super init];
    if (self) {
        self.albumLogo100   =   [weblogDic objectForKey:@"albumLogo100"];
        self.albumLogo444   =   [weblogDic objectForKey:@"albumLogo444"];
        self.albumName      =   [weblogDic objectForKey:@"albumName"];
        self.artistName     =   [weblogDic objectForKey:@"artistName"];
        self.avatar         =   [weblogDic objectForKey:@"avatar"];
        self.commentNum     =   [[weblogDic objectForKey:@"commentNum"] integerValue];
        self.distance = [weblogDic objectForKey:@"distance"];
        self.hideFlag = [[weblogDic objectForKey:@"hideFlag"] integerValue];
        self.hideNum = [[weblogDic objectForKey:@"hideNum"] integerValue];
        self.hideType = [[weblogDic objectForKey:@"hideType"] integerValue];
        self.imageUrl = [weblogDic objectForKey:@"imageUrl"];
        self.isShowTopic = [[weblogDic objectForKey:@"isShowTopic"] boolValue];
        self.joinCount = [[weblogDic objectForKey:@"joinCount"] integerValue];
        self.momentsId = [weblogDic objectForKey:@"momentsId"];
        self.momentsNum = [[weblogDic objectForKey:@"momentsNum"] integerValue];
        self.momentsText = [weblogDic objectForKey:@"momentsText"];
        self.momentsTime = [weblogDic objectForKey:@"momentsTime"];
        self.momentsType = [weblogDic objectForKey:@"momentsType"];
        self.myself = [[weblogDic objectForKey:@"myself"] integerValue];
        self.nickname = [weblogDic objectForKey:@"nickname"];
        self.notReadNum = [[weblogDic objectForKey:@"notReadNum"] integerValue];
        self.releaseTime = [weblogDic objectForKey:@"releaseTime"];
        self.secret = NO;
        if (![[weblogDic objectForKey:@"secret"] integerValue]) {//nil
            self.secret = YES;
        }
        
        self.shareTo = [[weblogDic objectForKey:@"shareTo"] integerValue];
        
        self.songId = [weblogDic objectForKey:@"songId"];
        self.songLocation = [weblogDic objectForKey:@"songLocation"];
        self.songName = [weblogDic objectForKey:@"songName"];
        self.tag = [weblogDic objectForKey:@"tag"];
        self.thumbnailUrl = [weblogDic objectForKey:@"thumbnailUrl"];
        self.toURL = [weblogDic objectForKey:@"toURL"];
        self.topicColor = [weblogDic objectForKey:@"topicColor"];
        self.topicFlag = [weblogDic objectForKey:@"topicFlag"];
        self.topicId = [weblogDic objectForKey:@"topicId"];
        self.topicName = [weblogDic objectForKey:@"topicName"];
        self.userId = [weblogDic objectForKey:@"userId"];
        self.winkFlag = [[weblogDic objectForKey:@"winkFlag"] integerValue];
        self.winkNum = [[weblogDic objectForKey:@"winkNum"] integerValue];
        
        _atUserList = [NSMutableArray new];
        _commentList = [NSMutableArray new];
        _winkUserList = [NSMutableArray new];
        
        NSArray *atUserList = [weblogDic objectForKey:@"atUserList"];
        for (NSDictionary *dic in atUserList) {
            AtUser *atUser = [[AtUser alloc] initWithDictionary:dic];
            [_atUserList addObject:atUser];
        }
        
        NSArray *commentList = [weblogDic objectForKey:@"commentList"];
        for (NSDictionary *dic in commentList) {
            Comment *comment = [[Comment alloc] initWithDictionary:dic];
            [_commentList addObject:comment];
        }
        
        NSArray *winkUserList= [weblogDic objectForKey:@"winkUserList"];
        for (NSDictionary *dic in winkUserList) {
            WinkUser *winkUser = [[WinkUser alloc] initWithDictionary:dic];
            [_winkUserList addObject:winkUser];
        }
        
        
        
        NSLog(@"albumLogo444:%@",_albumLogo444);
    }
    return self;
}

@end
