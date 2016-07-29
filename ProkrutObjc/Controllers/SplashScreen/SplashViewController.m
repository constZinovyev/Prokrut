//
//  SplashViewController.m
//  ProkrutObjc
//
//  Created by Beniamin Sarkisyan on 21/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "SplashViewController.h"

#import "AuthorizationService.h"

#import "SegueIdentifiers.h"

@implementation SplashViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    if ([AuthorizationService currentUser]) {
    	[self performSegueWithIdentifier:ShowTabControllerSegueIdentifier sender:nil];
    } else {
        [self performSegueWithIdentifier:ShowAuthorizationControllerSegueIdentifier sender:nil];
    }
}

@end
