//
//  FWWeiboModel.h
//  FxxkWeibo
//
//  Created by Victor Ji on 15/6/30.
//  Copyright © 2015年 Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface FWWeiboModel : MTLModel <MTLJSONSerializing>

// 微博ID
@property (strong, nonatomic) NSString *identifier; // id = 3858003017205327; idstr = 3858003017205327;

// 微博MID
@property (strong, nonatomic) NSString *mid; // mid = 3858003017205327;

// 微博流内的推广微博ID
@property (strong, nonatomic) NSString *adId; //

// 微博作者的用户信息字段
//var user : FWUserModel?

// 表态数
@property (assign, nonatomic) NSInteger attitudesCount; // "attitudes_count" = 0;

// 评论数
@property (assign, nonatomic) NSInteger commentsCount; // "comments_count" = 0;

// 转发数
@property (assign, nonatomic) NSInteger repostsCount; // "reposts_count" = 0;

// 微博创建时间
@property (strong, nonatomic) NSDate *createTime; // "created_at" = "Fri Jun 26 15:17:40 +0800 2015";

// 是否已收藏，true：是，false：否
@property (assign, nonatomic) BOOL favorited; // favorited = 0;

//（暂未支持）回复ID
@property (strong, nonatomic) NSString *replyId; //"in_reply_to_status_id" = "";

//（暂未支持）回复人UID
@property (strong, nonatomic) NSString *replyUserId; //"in_reply_to_user_id" = "";

//（暂未支持）回复人昵称
@property (strong, nonatomic) NSString *replyUserName; //"in_reply_to_screen_name" = "";

// 暂未支持，不知道什么鬼
@property (assign, nonatomic) NSInteger mlevel; // mlevel = 0;

// 微博来源
@property (strong, nonatomic) NSString *source; // source = "<a href=\"http://weibo.com/\" rel=\"nofollow\">\U5fae\U535a weibo.com</a>";

// 来源是否可点击？
@property (assign, nonatomic) BOOL sourceAllowClick; // "source_allowclick" = 0;

// 来源类型？
@property (assign, nonatomic) NSInteger sourceType; // "source_type" = 1;

// 微博信息内容
@property (strong, nonatomic) NSString *text; // text = "\U3010\U897f \U85cf\U65c5\U6e38\U5c0f"

// 是否被截断，true：是，false：否
@property (assign, nonatomic) BOOL truncated; // truncated = 0;

// 微博的可见性及指定可见分组信息。该object中type取值，0：普通微博，1：私密微博，3：指定分组微博，4：密友微博；list_id为分组的组号
@property (assign, nonatomic) NSInteger visibleType; // visible = {"list_id" = 0;type = 0;};
@property (strong, nonatomic) NSString *visibleListId;

// 缩略图片地址，没有时不返回此字段
@property (strong, nonatomic) NSString *thumbnailPicUrl; // "thumbnail_pic" = "http://ww1.sinaimg.cn/thumbnail/005Cq8gXjw1ethimnx1hcj30b90k0dgt.jpg";

// 中等尺寸图片地址，没有时不返回此字段
@property (strong, nonatomic) NSString *middlePicUrl; // "bmiddle_pic" = "http://ww1.sinaimg.cn/bmiddle/005Cq8gXjw1ethimnx1hcj30b90k0dgt.jpg";

// 原始图片地址，没有时不返回此字段
@property (strong, nonatomic) NSString *originPicUrl; // "original_pic" = "http://ww1.sinaimg.cn/large/005Cq8gXjw1ethimnx1hcj30b90k0dgt.jpg";

// 被转发的原微博信息字段，当该微博为转发微博时返回
@property (strong, nonatomic) FWWeiboModel *retweetedStatus; //

@end
