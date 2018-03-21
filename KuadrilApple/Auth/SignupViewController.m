//
//  SignupViewController.m
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "SignupViewController.h"
#import "AlertDialogUtil.h"

@import FirebaseAuth;
@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)createAccountAndLogin:(UIButton *)sender {
    
    NSString *email = _emailField.text;
    //NSString *name = _nameField.text;
    NSString *password = _passwordField.text;
    
    if ([password isEqualToString:_repeatPasswordField.text]){
        [[FIRAuth auth] createUserWithEmail:email password:password
            completion:^(FIRUser *_Nullable user, NSError *_Nullable error) {
                if (user!=nil){
                    [[self navigationController] popViewControllerAnimated:YES];
                } else {
                    [AlertDialogUtil showAlertWithTitle:@"Error" message:@"Datu guztiak ondo bete." delay:0.1 controller:self];
                }
                
        }];
    }
}
@end
