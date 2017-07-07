//
//  ViewController.m
//  DecypherDeployStudioPassword
//
//  Created by Yoann Gini on 07/07/2017.
//  Copyright © 2017 Yoann Gini. All rights reserved.
//

#import "ViewController.h"

@interface NSString (NSString_DStudio_CodecsExtensions)
- (id)xorAndHexFormat;
- (id)base64SHA1;
- (id)decodeBase64;
- (id)encodeToBase64;
- (id)decipherWithKey:(id)arg1;
- (id)cipherWithKey:(id)arg1;
- (id)crypt:(int)arg1 withKey:(id)arg2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.key = @"1YL601802TQ";
    
    [self addObserver:self
           forKeyPath:@"key"
              options:0
              context:nil];
    
    [self addObserver:self
           forKeyPath:@"base64secret"
              options:0
              context:nil];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    self.cleartext = [self.base64secret crypt:1 withKey:self.key];
}


@end
