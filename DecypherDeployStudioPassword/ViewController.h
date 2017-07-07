//
//  ViewController.h
//  DecypherDeployStudioPassword
//
//  Created by Yoann Gini on 07/07/2017.
//  Copyright © 2017 Yoann Gini. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property NSString *key;
@property NSString *base64secret;
@property NSString *cleartext;
@property NSString *lastupdated;

@end

