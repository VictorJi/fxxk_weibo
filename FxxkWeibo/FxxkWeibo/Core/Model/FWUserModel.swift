//
//  UserModel.swift
//  FxxkWeibo
//
//  Created by Victor Ji on 15/6/26.
//  Copyright © 2015年 Victor. All rights reserved.
//

//import Cocoa

class FWUserModel: MTLModel, MTLJSONSerializing {
    //MARK: base data
    
    //用户UID
    var identifier : String? //id = 3974083895; idstr = 3974083895;
    
    //用户头像地址（高清），高清头像原图
    var avatarHD : String? //"avatar_hd" = "http://ww1.sinaimg.cn/crop.2.0.197.197.1024/ecdfb537gw1ecfhd1hh62j205k05kt8u.jpg";
    
    //用户头像地址（大图），180×180像素
    var avatarLarge : String? //"avatar_large" = "http://tp4.sinaimg.cn/3974083895/180/40044119467/0";
    
    //用户头像地址（中图），50×50像素
    var profileImage : String? //"profile_image_url" = "http://tp4.sinaimg.cn/3974083895/50/40044119467/0";
    
    //用户个人描述
    var userDescription : String? //description = "越努力，越幸运";
    
    //用户所在地
    var location : String? //location = "江苏 无锡";
    
    //性别，m：男、f：女、n：未知
    var gender : String? //gender = f;
    
    //友好显示名称
    var name : String? //name = "就是小酸";
    
    //用户昵称
    var screenName : String? //"screen_name" = "就是小酸";
    
    
    //MARK: detail
    
    //用户创建（注册）时间
    var createTime : NSDate? //"created_at" = "Sat Jan 11 11:17:43 +0800 2014";
    
    //信用分是什么鬼？官方文档上没有
    var creditScore : String? //"credit_score" = 80;
    
    //用户所在省级ID
    var province : String? //province = 32;
    
    //用户所在城市ID
    var city : String? //city = 2;
    
    //等级，文档没写
    var rank : String? //urank = 14;
    
    //用户的微号
    var weihao : String? //weihao = "";
    
    //用户的个性化域名
    var domain : String? //domain = "";
    
    //用户的微博统一URL地址
    var profileUrl : String? //"profile_url" = "u/3974083895";
    
    //用户博客地址
    var blogUrl : String? //url = "";
    
    //用户备注信息，只有在查询用户关系时才返回此字段
    var remark : String? //remark = "";
    
    
    //MARK: data
    
    //微博数
    var statusesCount : String? //"statuses_count" = 24;
    
    //收藏数
    var favouritesCount : String? //"favourites_count" = 206;
    
    
    //MARK: relationships
    
    //粉丝数
    var followersCount : String? //"followers_count" = 89;
    
    //关注数
    var friendsCount : String? //"friends_count" = 470;
    
    //用户的互粉数
    var biFollowersCount : String? //"bi_followers_count" = 2;
    
    //该用户是否关注当前登录用户，true：是，false：否
    var followMe : String? //"follow_me" = 0;
    
    //感觉像是自己是否关注此人。。。文档上写的“暂未支持”
    var following : String? //following = 0;
    
    
    //MARK: config
    
    //是否允许所有人给我发私信，true：是，false：否
    var allowAllActMessage : String? //"allow_all_act_msg" = 0;
    
    //是否允许所有人对我的微博进行评论，true：是，false：否
    var allowAllComment : String? //"allow_all_comment" = 1;
    
    //是否允许标识用户的地理位置，true：是，false：否
    var geoEnabled : String? //"geo_enabled" = 1;
    
    //用户当前的语言版本，zh-cn：简体中文，zh-tw：繁体中文，en：英语
    var language : String? //lang = "zh-cn";
    
    //用户的在线状态，0：不在线、1：在线
    var onlineStatus : String? //"online_status" = 0;
    
    
    //MARK: verified
    
    //是否是微博认证用户，即加V用户，true：是，false：否
    var verified : String? //verified = 0;
    
    //文档上写的“暂未支持”，我也不知道是什么鬼
    var verifiedType : String? //"verified_type" = "-1";
    
    //认证原因
    var verifiedReason : String? //"verified_reason" = "";
    
    /*
    还有这堆东西文档里没写，也猜不出来，等研究出来再补上去
    "block_app" = 0;
    "block_word" = 0;
    class = 1;
    mbrank = 0;
    mbtype = 0;
    "pagefriends_count" = 3;
    ptype = 0;
    star = 0;
    "verified_reason_url" = "";
    "verified_source" = "";
    "verified_source_url" = "";
    "verified_trade" = "";
    */
    
    static func JSONKeyPathsByPropertyKey() -> [NSObject : AnyObject]! {
        return [
            "identifier"        : "idstr",
            "avatarHD"          : "avatar_hd",
            "avatarLarge"       : "avatar_large",
            "profileImage"      : "profile_image_url",
            "userDescription"   : "description",
            "screenName"        : "screen_name",
            "createTime"        : "created_at",
            "creditScore"       : "credit_score",
            "rank"              : "urank",
            "profileUrl"        : "profile_url",
            "blogUrl"           : "url",
            "statusesCount"     : "statuses_count",
            "favouritesCount"   : "favourites_count",
            "followersCount"    : "followers_count",
            "friendsCount"      : "friends_count",
            "biFollowersCount"  : "bi_followers_count",
            "followMe"          : "follow_me",
            "allowAllActMessage": "allow_all_act_msg",
            "allowAllComment"   : "allow_all_comment",
            "geoEnabled"        : "geo_enabled",
            "language"          : "lang",
            "onlineStatus"      : "online_status",
            "verifiedType"      : "verified_type",
            "verifiedReason"    : "verified_reason"
        ];
    }
    
//    class func followMeJSONTransformer() -> NSValueTransformer {
//        return NSValueTransformer(forName: MTLStringeanValueTransformerName)!
//    }
//    
//    class func followingJSONTransformer() -> NSValueTransformer {
//        return NSValueTransformer(forName: MTLStringeanValueTransformerName)!
//    }
//    
//    class func allowAllActMessageJSONTransformer() -> NSValueTransformer {
//        return NSValueTransformer(forName: MTLStringeanValueTransformerName)!
//    }
//    
//    class func allowAllCommentJSONTransformer() -> NSValueTransformer {
//        return NSValueTransformer(forName: MTLStringeanValueTransformerName)!
//    }
//    
//    class func geoEnabledJSONTransformer() -> NSValueTransformer {
//        return NSValueTransformer(forName: MTLStringeanValueTransformerName)!
//    }
//    
//    class func onlineStatusJSONTrasformer() -> NSValueTransformer {
//        return NSValueTransformer(forName: MTLStringeanValueTransformerName)!
//    }
//    
//    class func verifiedJSONTransformer() -> NSValueTransformer {
//        return NSValueTransformer(forName: MTLStringeanValueTransformerName)!
//    }
    
    class func createTimeJSONTransformer(dateString : String) -> NSDate {
        return (FWDateManager.manager.serverDateFormatter?.dateFromString(dateString))!
    }
    
}
