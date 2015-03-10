//
//  ViewController.m
//  OrientationTest
//
//  Created by Leman Kwok on 6/3/2015.
//  Copyright (c) 2015年 HEAD VERSION LTD. All rights reserved.
//

#import "ViewController.h"


@interface BaseViewController ()

@property (nonatomic, strong) UIBarButtonItem *landscapeNavItem;
@property (nonatomic, strong) UIBarButtonItem *portraitNavItem;

@end

@implementation BaseViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//self.view.backgroundColor = [UIColor blackColor];
	
	self.navigationController.navigationBarHidden = NO;
	
	_landscapeNavItem = [[UIBarButtonItem alloc] initWithTitle:@"Landscape" style:UIBarButtonItemStylePlain target:self action:@selector(doPresent:)];
	_portraitNavItem = [[UIBarButtonItem alloc] initWithTitle:@"Portrait" style:UIBarButtonItemStylePlain target:self action:@selector(doPresent:)];
	
	self.navigationItem.rightBarButtonItems = @[_landscapeNavItem, _portraitNavItem];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void) doPresent:(id)sender
{
	if(sender == _landscapeNavItem){
		[self.navigationController pushViewController:[[LandscapeTableViewController alloc] initWithStyle:UITableViewStyleGrouped] animated:YES];
	}
	if(sender == _portraitNavItem){
		[self.navigationController pushViewController:[[PortraitTableViewController alloc] initWithStyle:UITableViewStyleGrouped] animated:YES];
	}
}

@end


@interface BaseTableViewController ()

@property (nonatomic, strong) UIBarButtonItem *landscapeNavItem;
@property (nonatomic, strong) UIBarButtonItem *portraitNavItem;

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//self.view.backgroundColor = [UIColor blackColor];
	
	self.navigationController.navigationBarHidden = NO;
	
	_landscapeNavItem = [[UIBarButtonItem alloc] initWithTitle:@"Landscape" style:UIBarButtonItemStylePlain target:self action:@selector(doPresent:)];
	_portraitNavItem = [[UIBarButtonItem alloc] initWithTitle:@"Portrait" style:UIBarButtonItemStylePlain target:self action:@selector(doPresent:)];
	
	self.navigationItem.rightBarButtonItems = @[_landscapeNavItem, _portraitNavItem];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void) doPresent:(id)sender
{
	if(sender == _landscapeNavItem){
		[self.navigationController pushViewController:[[LandscapeTableViewController alloc] initWithStyle:UITableViewStyleGrouped] animated:YES];
	}
	if(sender == _portraitNavItem){
		[self.navigationController pushViewController:[[PortraitTableViewController alloc] initWithStyle:UITableViewStyleGrouped] animated:YES];
	}
}

@end

@implementation MyNavCtr
//*
- (BOOL)shouldAutorotate {
	return YES;
}

- (UIInterfaceOrientation ) preferredInterfaceOrientationForPresentation
{
	return UIInterfaceOrientationLandscapeLeft;
}

- (NSUInteger)supportedInterfaceOrientations
{
	return ( UIInterfaceOrientationMaskAll);
}
//*/
@end


@interface ViewController ()
@end


@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	UINavigationController *navCtr = self.navigationController;
	navCtr.navigationBarHidden = NO;
	self.title = @"Home";

}

- (void) viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
	[[UIDevice currentDevice] setValue:
	 [NSNumber numberWithInteger: UIInterfaceOrientationPortrait]
								forKey:@"orientation"];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end


@implementation  LandscapeTableViewController
- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.title = @"Landscape VC";

}

- (void) viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	[[UIDevice currentDevice] setValue:
	 [NSNumber numberWithInteger: UIInterfaceOrientationLandscapeLeft]
								forKey:@"orientation"];
}

- (BOOL)shouldAutorotate {
	return YES;
}

- (UIInterfaceOrientation ) preferredInterfaceOrientationForPresentation
{
	return UIInterfaceOrientationLandscapeLeft;
}

- (NSUInteger)supportedInterfaceOrientations
{
	return (UIInterfaceOrientationMaskLandscape);
}

@end

@implementation PortraitTableViewController
- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.title = @"Portrait VC";
}

- (void) viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	[[UIDevice currentDevice] setValue:
	 [NSNumber numberWithInteger: UIInterfaceOrientationPortrait]
								forKey:@"orientation"];
}

- (BOOL)shouldAutorotate {
	return YES;
}

- (UIInterfaceOrientation ) preferredInterfaceOrientationForPresentation
{
	return UIInterfaceOrientationPortrait;
}

- (NSUInteger)supportedInterfaceOrientations
{
	return (UIInterfaceOrientationMaskPortrait);
}

@end