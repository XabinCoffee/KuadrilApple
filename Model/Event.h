//
//  Event.h
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (weak, nonatomic) NSString* eventId;
@property (weak, nonatomic) NSString* owner;
@property (weak, nonatomic) NSString* name;
@property (weak, nonatomic) NSString* description;
@property (weak, nonatomic) NSString* location;
//@property (weak, nonatomic) NSString* icon;

@property (weak, nonatomic) NSMutableArray* dateVotes;
@property (weak, nonatomic) NSMutableArray* members;
@property (weak, nonatomic) NSMutableDictionary* userComments;


@end
