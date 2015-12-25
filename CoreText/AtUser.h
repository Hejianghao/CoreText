//
//  AtUser.h
//  CoreText
//
//  Created by 何江浩 on 15/12/25.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AtUser : NSObject

@property (nonatomic, strong) NSString *nickname;

@property (nonatomic, strong) NSString *userId;


- (id) initWithDictionary:(NSDictionary *)atUsers;

@end
