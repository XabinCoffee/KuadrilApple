//
//  EventTableViewCell.h
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 21/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *eventIcon;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *numMembers;
@property (weak, nonatomic) IBOutlet UILabel *eventDescription;

@end
