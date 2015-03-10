//
//  ViewController.h
//  OrientationTest
//
//  Created by Leman Kwok on 6/3/2015.
//  Copyright (c) 2015年 HEAD VERSION LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyNavCtr : UINavigationController

@end

@interface BaseViewController : UIViewController

@end


@interface ViewController : BaseViewController


@end


@interface BaseTableViewController : UITableViewController

@end

@interface LandscapeTableViewController : BaseTableViewController

@end

@interface PortraitTableViewController : BaseTableViewController

@end