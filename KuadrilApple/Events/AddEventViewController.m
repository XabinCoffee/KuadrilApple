//
//  AddEventViewController.m
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if (sender == __saveButton){
        Event* ev2 = [[Event alloc] init];
        ev2.eventId=@"2";
        ev2.owner=@"me";
        ev2.name=@"Jarbaskasofskie";
        ev2.desc=@"Ene flflflfl badaaaaa";
        ev2.location=@"Tri paloski";
        _event = ev2;
    }

}


- (IBAction)exit:(id)sender {
    [self dismissViewControllerAnimated:self completion:nil];
}
@end
