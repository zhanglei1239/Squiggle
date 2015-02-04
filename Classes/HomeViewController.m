//
//  HomeViewController.m
//  Painter
//
//  Created by  ibokan on 10-9-7.
//  Copyright 2010 tencent.com. All rights reserved.
//

#import "HomeViewController.h"
#import "PainterView.h"


@implementation HomeViewController

-(id) init 
{
	if(self = [super init])
	{
		self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
		self.view.backgroundColor = [UIColor whiteColor];
		
        showView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
        [self.view addSubview:showView];
        
		_painterView = [[PainterView alloc] initWithFrame:CGRectMake(0, 340, 320, 100)];
        [_painterView setBackgroundColor:[UIColor redColor]];
		[self.view addSubview:_painterView];
        _painterView.delegate = self;
        _painterView.scale = 1;
        
        _painterView1 = [[PainterView alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
        [_painterView1 setBackgroundColor:[UIColor yellowColor]];
        [showView addSubview:_painterView1];
        _painterView1.scale = 100*1.0/60;
		_toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 440, 320, 40)];
		_toolbar.barStyle = UIBarStyleBlack;
		[self.view addSubview:_toolbar];
		UIBarButtonItem *eraseButton = [[UIBarButtonItem alloc] initWithTitle:@" Erase " 
																		style:UIBarButtonItemStyleBordered
																	   target:self
																	   action:@selector(erase)];
		
		UIBarButtonItem *clearButton = [[UIBarButtonItem alloc] initWithTitle:@" clear " 
																		style:UIBarButtonItemStyleBordered
																	   target:self
																	   action:@selector(clear)];
		UIBarButtonItem *finishButton = [[UIBarButtonItem alloc] initWithTitle:@" finish " 
																		style:UIBarButtonItemStyleBordered
																	   target:self
																	   action:@selector(finish)];
		UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
																			   target:nil
																			   action:nil];
		
		[_toolbar setItems:[NSArray arrayWithObjects:space, eraseButton, clearButton, finishButton,space, nil]];
		[eraseButton release];
		[clearButton release];
		[space release];
		
	}
	
	return self;
}

-(void) erase
{
	[_painterView erase];
}

-(void) clear
{
	[_painterView resetView];
}

-(void) finish
{
	[_painterView setColor:[UIColor whiteColor]];
}


- (void)dealloc 
{
	[_toolbar release];
    [super dealloc];
}

-(void)copyDrawRect:(NSMutableDictionary *)squi finish:(NSMutableArray *)finishSqui{ 
    _painterView1.squi = squi;
    _painterView1.finish = finishSqui;
    [_painterView1 setNeedsDisplay];
    
}

@end
