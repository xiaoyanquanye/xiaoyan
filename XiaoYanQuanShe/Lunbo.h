//
//  Lunbo.h
//  XiaoYanQuanShe
//
//  Created by guo xiangyu on 15/3/17.
//  Copyright © 2017年 潇  岩. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Lunbo;
@protocol lunboDelegate <NSObject>
@optional
/**
 *  点击图片的回调事件
 */
- (void)carouselView:(Lunbo *)carouselView indexOfClickedImageBtn:(NSUInteger)index;
@end

@interface Lunbo : UIView
//传入图片数组
@property (nonatomic, copy) NSArray *images;
//pageControl颜色设置
@property (nonatomic, strong) UIColor *currentPageColor;
@property (nonatomic, strong) UIColor *pageColor;
//是否竖向滚动
@property (nonatomic, assign, getter=isScrollDorectionPortrait) BOOL scrollDorectionPortrait;

@property (weak, nonatomic) id<lunboDelegate> delegate;

@end
