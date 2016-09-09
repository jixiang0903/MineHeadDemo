//
//  PersonalHomeController.h
//  DailyRanking
//
//  Created by ymy on 15/11/12.
//  Copyright © 2015年 com.xianlaohu.multipeer. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol NavHeadTitleViewDelegate <NSObject>
@optional
- (void)NavHeadback;
- (void)NavHeadToRight;
@end
@interface NavHeadTitleView : UIView
@property(nonatomic,assign)id<NavHeadTitleViewDelegate>delegate;
@property(nonatomic,strong)UIImageView * headBgView;
@property(nonatomic,strong)NSString * title;
@property(nonatomic,strong)UIColor * color;
@property(nonatomic,strong)NSString * backTitleImage;
@property(nonatomic,strong)NSString * rightImageView;
@property(nonatomic,strong)NSString * rightTitleImage;
@end
