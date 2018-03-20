//
//  DateVote.h
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateVote : NSObject

@property (weak, nonatomic) NSString* creator;
@property (weak, nonatomic) NSString* creatorName;
@property (weak, nonatomic) NSString* date;
@property (weak, nonatomic) NSString* time;
@property (weak, nonatomic) NSMutableArray* likes;
@property (weak, nonatomic) NSMutableArray* dislikes;

@end
