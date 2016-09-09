
//
//  NavHeadTitleView.m
//  京师杏林
//
//  Created by sjt on 15/11/12.
//  Copyright © 2015年 MaNingbo. All rights reserved.
//

#import "NavHeadTitleView.h"
@interface NavHeadTitleView()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIButton * back;
@property(nonatomic,strong)UIButton * rightBtn;
@end
@implementation NavHeadTitleView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        self.headBgView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        self.headBgView.backgroundColor=[UIColor whiteColor];
        self.headBgView.image = [UIImage imageNamed:@"nav－-bar"];
        //隐藏黑线
        self.headBgView.alpha=0;
//        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 63.5, WIDTH, 0.5)];
//        label.backgroundColor=[UIColor grayColor];
//        [self.headBgView addSubview:label];
        [self addSubview:self.headBgView];
        
        self.back=[UIButton buttonWithType:UIButtonTypeCustom];
        self.back.backgroundColor=[UIColor clearColor];
        self.back.frame=CGRectMake(5, 20, 44, 44);
        [self.back addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.back];
        
        self.backgroundColor=[UIColor clearColor];
        self.label=[[UILabel alloc]initWithFrame:CGRectMake(44, 20, frame.size.width-44-44, 44)];
        self.label.textAlignment=NSTextAlignmentCenter;
        self.label.font = [UIFont systemFontOfSize:18];
        [self addSubview:self.label];
        
        self.rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.rightBtn.backgroundColor = [UIColor clearColor];
        self.rightBtn.frame = CGRectMake(self.frame.size.width-46, 30, 30, 30);
        [self.rightBtn addTarget:self action:@selector(rightBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.rightBtn];
        
//        @weakify(self);
//        [self addColorChangedBlock:^{
//            @strongify(self);
//            self.headBgView.normalBackgroundColor = [UIColor purpleColor];
//            self.headBgView.nightBackgroundColor=RGB(1, 7, 38);
//            self.rightBtn.nightTitleColor=RGB(150, 150, 150);

//        }];
        
    }
    return self;
}
-(void)setBackTitleImage:(NSString *)backTitleImage
{
    _backTitleImage=backTitleImage;
    [self.back setImage:[UIImage imageNamed:_backTitleImage] forState:UIControlStateNormal];
}
-(void)setRightImageView:(NSString *)rightImageView
{
    _rightImageView=rightImageView;
    [self.rightBtn setImage:[UIImage imageNamed:_rightImageView] forState:UIControlStateNormal];
    //[self.rightBtn setTitle:rightImageView forState:UIControlStateNormal];
}
-(void)setRightTitleImage:(NSString *)rightImageView
{
    _rightImageView=rightImageView;
    [self.rightBtn setImage:[UIImage imageNamed:_rightImageView] forState:UIControlStateNormal];
}

-(void)setTitle:(NSString *)title{
    _title=title;
    self.label.text=title;
    //self.label.textColor=[UIColor whiteColor];
    //[self jianBian];
    
}

-(void)setColor:(UIColor *)color{
    _color=color;
    self.label.textColor=color;
    //[self jianBian];
}

//返回按钮
-(void)backClick{
    if ([_delegate respondsToSelector:@selector(NavHeadback)] ) {
        [_delegate NavHeadback];
    }
}
//右边按钮
-(void)rightBtnClick{
    if ([_delegate respondsToSelector:@selector(NavHeadToRight)]) {
        [_delegate NavHeadToRight];
    }
}
-(void)jianBian{
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame =self.label.frame;
    gradientLayer.colors = @[(id)[UIColor colorWithRed:222/225.0 green:98/255.0 blue:26/255.0 alpha:0.1].CGColor, (id)[UIColor colorWithRed:245/225.0 green:163/255.0 blue:17/255.0 alpha:1].CGColor];
    gradientLayer.mask = self.label.layer;
    [self.layer addSublayer:gradientLayer];
    self.label.frame = gradientLayer.bounds;
}

@end
