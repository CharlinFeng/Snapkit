//
//  UIView+Snapkit.m
//  Snapkit
//
//  Created by 冯成林 on 16/1/22.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "UIView+Snapkit.h"
#import "Masonry.h"

@implementation UIView (Snapkit)


/**  四边内边距  */
-(void)make_4Inset:(UIEdgeInsets)inset{
    
    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.edges.mas_equalTo(inset);
    }];
}

/**  顶部内边距 + 高度  */
-(void)make_topInsets_topHeight:(CGFloat)top left:(CGFloat)left right:(CGFloat)right topHeight:(CGFloat)topHeight{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(sv.mas_top).offset(top);
        make.leading.equalTo(sv.mas_leading).offset(left);
        make.trailing.equalTo(sv.mas_trailing).offset(-right);
        make.height.mas_equalTo(topHeight);
    }];
}

/**  左侧内边距 + 宽度  */
-(void)make_leftInsets_leftWidthWithTop:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom leftWidth:(CGFloat)leftWidth{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}

    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(sv.mas_top).offset(top);
        make.leading.equalTo(sv.mas_leading).offset(left);
        make.bottom.equalTo(sv.mas_bottom).offset(-bottom);
        make.width.mas_equalTo(leftWidth);
    }];
}



/**  底部内边距 + 高度  */
-(void)make_bottomInsets_bottomHeightWithLeft:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right bottomHeight:(CGFloat)bottomHeight{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.equalTo(sv.mas_leading).offset(left);
        make.bottom.equalTo(sv.mas_bottom).offset(-bottom);
        make.trailing.equalTo(sv.mas_trailing).offset(-right);
        make.height.mas_equalTo(bottomHeight);
    }];
}


/**  右侧内边距 + 宽度  */
-(void)make_rightInsets_rightWidthWithBottom:(CGFloat)bottom right:(CGFloat)right top:(CGFloat)top rightWidth:(CGFloat)rightWidth{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {;
        make.top.equalTo(sv.mas_top).offset(top);
        make.bottom.equalTo(sv.mas_bottom).offset(-bottom);
        make.trailing.equalTo(sv.mas_trailing).offset(-right);
        make.width.mas_equalTo(rightWidth);
    }];
}



/**  左上角 + 宽度 + 高度  */
-(void)make_leftTop_WHWithTop:(CGFloat)top left:(CGFloat)left leftWidth:(CGFloat)leftWidth topHeight:(CGFloat)topHeight{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}

    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(sv.mas_top).offset(top);
        make.leading.equalTo(sv.mas_leading).offset(left);
        make.width.mas_equalTo(leftWidth);
        make.height.mas_equalTo(topHeight);
    }];
}



/**  右上角 + 宽度 + 高度  */
-(void)make_rightTop_WHWithTop:(CGFloat)top right:(CGFloat)right rightWidth:(CGFloat)rightWidth topHeight:(CGFloat)topHeight{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(sv.mas_top).offset(top);
        make.trailing.equalTo(sv.mas_trailing).offset(-right);
        make.width.mas_equalTo(rightWidth);
        make.height.mas_equalTo(topHeight);
    }];
}


/**  左下角 + 宽度 + 高度  */
-(void)make_leftBottom_WHWithLeft:(CGFloat)left bottom:(CGFloat)bottom leftWidth:(CGFloat)leftWidth bottomHeight:(CGFloat)bottomHeight{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}

    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.equalTo(sv.mas_leading).offset(left);
        make.bottom.equalTo(sv.mas_bottom).offset(-bottom);
        make.width.mas_equalTo(leftWidth);
        make.height.mas_equalTo(bottomHeight);
    }];
}


/**  右下角 + 宽度 + 高度  */
-(void)make_rightBottomWithBottom:(CGFloat)bottom right:(CGFloat)right rightWidth:(CGFloat)rightWidth bottomHeight:(CGFloat)bottomHeight{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}

    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.trailing.equalTo(sv.mas_trailing).offset(-right);
        make.bottom.equalTo(sv.mas_bottom).offset(-bottom);
        make.width.mas_equalTo(rightWidth);
        make.height.mas_equalTo(bottomHeight);
    }];
}



/**  中点 + 偏移 + 大小  */
-(void)make_centerWithOffset:(CGPoint)offsest width:(CGFloat)width height:(CGFloat)height{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.equalTo(sv).centerOffset(offsest);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
}


/** 顶部居中 + 宽高 */
-(void)make_top_WHWithTop:(CGFloat)top offsetX:(CGFloat)offsetX width:(CGFloat)width height:(CGFloat)height{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(sv.mas_centerX).offset(offsetX);
        make.top.equalTo(sv.mas_top).offset(top);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
}



/** 左侧居中 + 宽高 */
-(void)make_left_WHWithLeft:(CGFloat)left offsetY:(CGFloat)offsetY width:(CGFloat)width height:(CGFloat)height{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(sv.mas_centerY).offset(offsetY);
        make.leading.equalTo(sv.mas_leading).offset(left);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
}


/** 底部居中 + 宽高 */
-(void)make_bottom_WHWithBottom:(CGFloat)bottom offsetX:(CGFloat)offsetX width:(CGFloat)width height:(CGFloat)height{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(sv.mas_centerX).offset(offsetX);
        make.bottom.equalTo(sv.mas_bottom).offset(-bottom);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
}


/** 右侧居中 + 宽高 */
-(void)make_right_WHWithRight:(CGFloat)right offsetY:(CGFloat)offsetY width:(CGFloat)width height:(CGFloat)height{

    __weak UIView *sv = self.superview;
    if (sv == nil) {return;}
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(sv.mas_centerY).offset(offsetY);
        make.trailing.equalTo(sv.mas_trailing).offset(-right);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(height);
    }];
}

@end
