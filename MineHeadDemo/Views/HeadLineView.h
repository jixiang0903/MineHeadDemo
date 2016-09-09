//
//  PersonalHomeController.h
//  DailyRanking
//
//  Created by ymy on 15/11/12.
//  Copyright © 2015年 com.xianlaohu.multipeer. All rights reserved.

#import <UIKit/UIKit.h>

@protocol headLineDelegate <NSObject>

@optional
- (void)refreshHeadLine:(NSInteger)currentIndex;

@end
@interface HeadLineView : UIView
@property(nonatomic,assign)NSInteger CurrentIndex;
@property(nonatomic,strong)NSArray * titleArray;
@property(nonatomic,assign)id<headLineDelegate>delegate;
@end
