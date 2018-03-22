//
//  AddEventViewController.h
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@interface AddEventViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *_saveButton;
@property Event* event;

- (IBAction)exit:(id)sender;

@end
