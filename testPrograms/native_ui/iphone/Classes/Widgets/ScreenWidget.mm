//
//  ScreenWidget.mm
//  nativeuitest
//
//  Created by Niklas Nummelin on 11/26/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ScreenWidget.h"


@implementation ScreenWidget

- (id)init {
    //view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	controller = [[ScreenWidgetController alloc] init];
	//controller.view = view;
	controller.title = @"";
	view = controller.view;
	//view.frame = [[UIScreen mainScreen] bounds];
	
	return [super init];
}

- (void)addChild: (IWidget*)child {
	[child getView].frame = [[UIScreen mainScreen] bounds];
	[super addChild:child];	
}

- (void)removeChild: (IWidget*)child {
}

- (int)setPropertyWithKey: (NSString*)key toValue: (NSString*)value {
	if([key isEqualToString:@"title"]) {
		controller.title = value;
	} else {
		return [super setPropertyWithKey:key toValue:value];
	}
	return MA_WIDGET_OK;	
}

- (NSString*)getPropertyWithKey: (NSString*)key {
	
	return [super getPropertyWithKey:key];
}

- (UIViewController*) getController {
	return controller;
}

@end
