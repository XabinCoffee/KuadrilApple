//
//  FrontpageViewController.m
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "FrontpageViewController.h"
@import FirebaseAuth;

@interface FrontpageViewController ()

@end

@implementation FrontpageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Navigation

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"Logout"]){
        NSError *signOutError;
        BOOL status = [[FIRAuth auth] signOut:&signOutError];
        if (!status) {
            NSLog(@"Error signing out: %@", signOutError);
            return;
        }
        
    }
}

@end
