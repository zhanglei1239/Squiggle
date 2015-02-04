//
//  PainterAppDelegate.h
//  Painter
//
//  Created by  ibokan on 10-9-7.
//  Copyright tencent.com 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HomeViewController;

@interface PainterAppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow *window;
	HomeViewController *_homeViewController;
}

@property (nonatomic, retain)  UIWindow *window;

@end

