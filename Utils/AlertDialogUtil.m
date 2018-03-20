//
//  AlertDialogUtil.m
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "AlertDialogUtil.h"
#import <UIKit/UIKit.h>

@implementation AlertDialogUtil


+ (void) showAlertWithTitle: (NSString*) title message: (NSString*) message delay: (double) delay controller:(UIViewController*) controller {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Error" style:UIAlertActionStyleDefault handler:^(UIAlertAction* action) {}];
    
    [alert addAction:defaultAction];
    
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [controller presentViewController:alert animated:YES completion:nil];
    });
}

@end
