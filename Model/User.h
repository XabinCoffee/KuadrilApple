//
//  User.h
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (weak, nonatomic) NSString* uid;
@property (weak, nonatomic) NSString* username;
@property (weak, nonatomic) NSString* email;

@end
