//
//  UIView+Snapkit.h
//  Snapkit
//
//  Created by 冯成林 on 16/1/22.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface UIView (Snapkit)

/**  四边内边距  */
-(void)make_4Inset:(UIEdgeInsets)inset;

/**  顶部内边距 + 高度  */
-(void)make_topInsets_topHeightWithTop:(CGFloat)top left:(CGFloat)left right:(CGFloat)right topHeight:(CGFloat)topHeight;

/**  左侧内边距 + 宽度  */
-(void)make_leftInsets_leftWidthWithTop:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom leftWidth:(CGFloat)leftWidth;

/**  底部内边距 + 高度  */
-(void)make_bottomInsets_bottomHeightWithLeft:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right bottomHeight:(CGFloat)bottomHeight;

/**  左上角 + 宽度 + 高度  */
-(void)make_leftTop_WHWithTop:(CGFloat)top left:(CGFloat)left leftWidth:(CGFloat)leftWidth topHeight:(CGFloat)topHeight;

/**  右上角 + 宽度 + 高度  */
-(void)make_rightTop_WHWithTop:(CGFloat)top right:(CGFloat)right rightWidth:(CGFloat)rightWidth topHeight:(CGFloat)topHeight;

/**  左下角 + 宽度 + 高度  */
-(void)make_leftBottom_WHWithLeft:(CGFloat)left bottom:(CGFloat)bottom leftWidth:(CGFloat)leftWidth bottomHeight:(CGFloat)bottomHeight;

/**  右下角 + 宽度 + 高度  */
-(void)make_rightBottomWithBottom:(CGFloat)bottom right:(CGFloat)right rightWidth:(CGFloat)rightWidth bottomHeight:(CGFloat)bottomHeight;

/**  中点 + 偏移 + 大小  */
-(void)make_centerWithOffset:(CGPoint)offsest width:(CGFloat)width height:(CGFloat)height;

/** 顶部居中 + 宽高 */
-(void)make_top_WHWithTop:(CGFloat)top offsetX:(CGFloat)offsetX width:(CGFloat)width height:(CGFloat)height;

/** 左侧居中 + 宽高 */
-(void)make_left_WHWithLeft:(CGFloat)left offsetY:(CGFloat)offsetY width:(CGFloat)width height:(CGFloat)height;

/** 底部居中 + 宽高 */
-(void)make_bottom_WHWithBottom:(CGFloat)bottom offsetX:(CGFloat)offsetX width:(CGFloat)width height:(CGFloat)height;

/** 右侧居中 + 宽高 */
-(void)make_right_WHWithRight:(CGFloat)right offsetY:(CGFloat)offsetY width:(CGFloat)width height:(CGFloat)height;

@end
