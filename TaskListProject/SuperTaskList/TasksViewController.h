//
//  SubtasksListViewController.h
//  SuperTaskList
//
//  Created by Jonathan Zhu on 6/16/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditTaskViewController.h"
#import "Tasks.h"
#import "Lists.h"
#import "EditTaskViewController.h"
#import "Category.h"



@interface TasksViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITableView *taskTableView;
@property (strong, nonatomic) NSArray * tasksArray;
- (IBAction)addTaskButtonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *addTaskButton;
@property (strong, nonatomic) IBOutlet UITextField *textLabel;
@property (strong, nonatomic) Lists *currentList;
//@property (strong, nonatomic) IBOutlet UINavigationItem *navBarTitle;


@end
