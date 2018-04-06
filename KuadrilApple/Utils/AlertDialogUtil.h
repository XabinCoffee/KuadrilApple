//
//  AlertDialogUtil.h
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AlertDialogUtil : NSObject

+ (void) showAlertWithTitle: (NSString*) title message: (NSString*) message delay: (double) delay controller:(UIViewController*)controller;

@end
