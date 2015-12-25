//
//  WebLog.h
//  CoreText
//
//  Created by 何江浩 on 15/12/24.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebLog : NSObject

@property (nonatomic, strong) NSString *albumLogo100;

@property (nonatomic, strong) NSString *albumLogo444;

@property (nonatomic, strong) NSString *albumName;

@property (nonatomic, strong) NSString *artistName;

@property (nonatomic, strong) NSString *avatar;

@property (nonatomic, assign) NSUInteger commentNum;

@property (nonatomic, strong) NSString *distance;

@property (nonatomic, assign) NSInteger hideFlag;//是否为bool？

@property (nonatomic, assign) NSInteger hideNum;

@property (nonatomic, assign) NSInteger hideType;//有多少种type

@property (nonatomic, strong) NSString *imageUrl;

@property (nonatomic, assign, getter = isShowTopic) BOOL isShowTopic;

@property (nonatomic, assign) NSInteger joinCount;

@property (nonatomic, strong) NSString *momentsId;

@property (nonatomic, assign) NSUInteger momentsNum;

@property (nonatomic, strong) NSString *momentsText;

@property (nonatomic, strong) NSString *momentsTime;

@property (nonatomic, strong) NSString *momentsType;

@property (nonatomic, assign) NSInteger myself;//?

@property (nonatomic, strong) NSString *nickname;

@property (nonatomic, assign) NSInteger notReadNum;

@property (nonatomic, strong) NSString *releaseTime;

@property (nonatomic, assign, getter = isSecret) BOOL secret;

@property (nonatomic, assign) NSInteger shareTo;

@property (nonatomic, strong) NSString *songId;

@property (nonatomic, strong) NSString *songLocation;

@property (nonatomic, strong) NSString *songName;

@property (nonatomic, strong) NSString *tag;

@property (nonatomic, strong) NSString *thumbnailUrl;

@property (nonatomic, strong) NSString *toURL;

@property (nonatomic, strong) NSString *topicColor;

@property (nonatomic, strong) NSString *topicFlag;

@property (nonatomic, strong) NSString *topicId;

@property (nonatomic, strong) NSString *topicName;

@property (nonatomic, strong) NSString *userId;

@property (nonatomic, assign) NSInteger winkFlag;

@property (nonatomic, assign) NSInteger winkNum;

//评论列表
@property (nonatomic, strong) NSMutableArray *commentList;

//挤眼用户列表
@property (nonatomic, strong) NSMutableArray *winkUserList;

//at用户列表
@property (nonatomic, strong) NSMutableArray *atUserList;


- (instancetype) initWithDictionary:(NSDictionary *)weblogDic;

@end
