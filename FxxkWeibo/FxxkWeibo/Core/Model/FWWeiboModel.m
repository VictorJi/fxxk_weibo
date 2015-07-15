//
//  FWWeiboModel.m
//  FxxkWeibo
//
//  Created by Victor Ji on 15/6/30.
//  Copyright © 2015年 Victor. All rights reserved.
//

#import "FWWeiboModel.h"

#import "FxxkWeibo-Swift.h"

@implementation FWWeiboModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"identifier"        : @"id",
        @"adId"              : @"ad",
        @"attitudesCount"    : @"attitudes_count",
        @"commentsCount"     : @"comments_count",
        @"repostsCount"      : @"reposts_count",
        @"createTime"        : @"created_at",
        @"replyId"           : @"in_reply_to_status_id",
        @"replyUserId"       : @"in_reply_to_user_id",
        @"replyUserName"     : @"in_reply_to_screen_name",
        @"sourceAllowClick"  : @"source_allowclick",
        @"sourceType"        : @"source_type",
        @"visibleType"       : @"visible.type",
        @"visibleListId"     : @"visivle.list_id",
        @"thumbnailPicUrl"   : @"thumbnail_pic",
        @"middlePicUrl"      : @"bmiddle_pic",
        @"originPicUrl"      : @"original_pic",
        @"retweetedStatus"   : @"retweeted_status",
        @"mid"               : @"mid",
        @"text"              : @"text",
        @"favorited"         : @"favorited",
        @"mlevel"            : @"mlevel",
        @"source"            : @"source",
        @"truncated"         : @"truncated"
    };
}

+ (NSDate *)createTimeJSONTransformer:(NSString *)dateString {
    return [[FWDateManager manager].serverDateFormatter dateFromString:dateString];
}

+ (NSValueTransformer *)favoritedJSONTrasformer {
    return [NSValueTransformer valueTransformerForName:MTLBooleanValueTransformerName];
}

+ (NSValueTransformer *)sourceAllowClickJSONTrasformer {
    return [NSValueTransformer valueTransformerForName:MTLBooleanValueTransformerName];
}

+ (NSValueTransformer *)truncatedJSONTrasformer {
    return [NSValueTransformer valueTransformerForName:MTLBooleanValueTransformerName];
}

+ (NSValueTransformer *)retweetedStatusJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[FWWeiboModel class]];
}

//class func userJSONTransformer() -> NSValueTransformer {
//    return MTLJSONAdapter.dictionaryTransformerWithModelClass(FWUserModel.self)
//}
//
//class func truncatedJSONTrasformer() -> NSValueTransformer {
//    return NSValueTransformer(forName: MTLBooleanValueTransformerName)!
//}
//
//class func retweetedStatusJSONTransformer() -> NSValueTransformer {
//    return MTLJSONAdapter.dictionaryTransformerWithModelClass(FWWeiboModel.self)
//}


@end
