//
//  PainterView.h
//  Painter
//
//  Created by  ibokan on 10-9-7.
//  Copyright 2010 tencent.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Squiggle.h"

@interface PainterView : UIView 
{
	//正在绘的曲线
//	NSMutableDictionary *squigglesDic;
	//已经完成的曲线
//	NSMutableArray *finishSquiggles;
	UIColor *color;
	float lineWidth;
}
@property (nonatomic,assign)float scale;
@property (nonatomic, retain) UIColor *color;
@property float lineWidth;
@property (nonatomic,assign) id delegate;
@property (nonatomic, retain)NSMutableArray * finish;
@property (nonatomic, retain)NSMutableDictionary * squi;
-(void) drawSquiggle:(Squiggle *)squiggle inContext:(CGContextRef)context;

-(void) resetView;
-(void) erase;
-(void) setColor:(UIColor *)color;

@end
@protocol copyDrawRectDelegate <NSObject>

-(void)copyDrawRect:(NSMutableDictionary *)squi finish:(NSMutableArray *)finishSqui;

@end