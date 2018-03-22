//
//  FrontpageViewController.m
//  KuadrilApple
//
//  Created by Xabin Rodriguez on 20/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import "FrontpageViewController.h"
#import "CustomEventViews/EventTableViewCell.h"
#import "Event.h"
#import "AddEventViewController.h"
@import FirebaseAuth;

@interface FrontpageViewController () {
    
    NSMutableArray* events;
    
}

@end

@implementation FrontpageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ref = [[FIRDatabase database] reference];
    
    Event* ev1 = [[Event alloc] init];
    ev1.eventId=@"1";
    ev1.owner=@"me";
    ev1.name=@"Bazkaya";
    ev1.desc=@"Bazkai earra";
    ev1.location=@"Etxian";
    
    Event* ev2 = [[Event alloc] init];
    ev2.eventId=@"2";
    ev2.owner=@"me";
    ev2.name=@"Tragotxuak";
    ev2.desc=@"Ene badaaaaa";
    ev2.location=@"Tri paloski";
    
    events = [[NSMutableArray alloc] init];
    
    [events addObject:ev1];
    [events addObject:ev2];
    
    
    /*[events addObject:@"je m'appelle brice"];
    [events addObject:@"je suis de nice"];
    [events addObject:@"je suis un snowboarder"];*/
    
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


-(IBAction) unwindToEventList:(UIStoryboardSegue *)unwindSegue{
    /*NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    if (selectedIndexPath != nil){
        ViewController *source = unwindSegue.sourceViewController;
        Meal *meal = source.meal;
        [meals replaceObjectAtIndex:selectedIndexPath.row withObject:meal];
        [self.tableView reloadData];
    } else {*/
        AddEventViewController *controller = unwindSegue.sourceViewController;
    
    if (controller.event != nil){
        [events addObject:controller.event];
        [_tableView reloadData];
    }
    
    
    //}
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
    
    Event* event = [events objectAtIndex:indexPath.row];
    
    UIImage* img = [UIImage imageNamed:@"KAppIcon"];
    cell.eventIcon.image = img;
    cell.nameLabel.text = event.name;
    cell.eventDescription.text = event.desc;
    cell.numMembers.text=@"1";
    
    return cell;
    
    
}

@end
