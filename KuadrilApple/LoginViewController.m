//
//  LoginViewController.m
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "LoginViewController.h"
@import FirebaseAuth;

@interface LoginViewController ()

@end

@implementation LoginViewController

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


#pragma mark Actions

- (IBAction)login:(UIButton *)sender {
    
    if ([_emailField.text isEqualToString:@""] || [_passwordField.text isEqualToString:@""]){
        [self showAlertWithTitle:@"Error" message:@"Datuak guztiak bete!" delay:0.1];
    } else {
        [[FIRAuth auth] signInWithEmail:_emailField.text
                               password:_passwordField.text
                             completion:^(FIRUser *user, NSError *error) {
                                 if (user != nil){
                                      [self performSegueWithIdentifier:@"ShowFrontpage" sender:nil];
                                 }
                                [self showAlertWithTitle:@"Error" message:@"Pasahitz/Erabiltzaile konbinazio okerra" delay:0.1];
                             }];
    }
    
}

#pragma mark Private methods

- (void) showAlertWithTitle: (NSString*) title message: (NSString*) message delay: (double) delay {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Error" style:UIAlertActionStyleDefault handler:^(UIAlertAction* action) {}];
    
    [alert addAction:defaultAction];
    
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [self presentViewController:alert animated:YES completion:nil];
    });
}
@end
