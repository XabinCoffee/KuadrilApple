//
//  FrontpageViewController.m
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "FrontpageViewController.h"
#import "CustomEventViews/EventTableViewCell.h"
@import FirebaseAuth;

@interface FrontpageViewController () {
    
    NSMutableArray* events;
    
}

@end

@implementation FrontpageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    events = [[NSMutableArray alloc] init];
    
    [events addObject:@"jais jeis jabiri"];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
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


#pragma mark - UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [events count];
}

#pragma mark - UITableViewDataSource


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EventTableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"EventCell" forIndexPath:indexPath];
    
    //UIImage* img = [UIImage imageNamed:@"KAppIcon"];
    //cell.eventIcon.image = img;
    
    return cell;
    
    
}

@end
