//
//  QCAddTaskViewController.m
//  SuperTaskList
//
//  Created by Jonathan Zhu on 6/16/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "QCAddTaskViewController.h"

@interface QCAddTaskViewController ()

@end

@implementation QCAddTaskViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.taskTextField.delegate=self;
    self.dateDueTextField.delegate=self;
    
    git remote set-url origin https://arntzel@github.com/project/acontero/TaskListApp.git
    https://github.com/acontero/TaskListApp.git
    
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]initWithTitle:@"Save" style:(UIBarButtonItemStyleBordered) target:self action:@selector(saveButtonPressed:)];
    
    self.navigationItem.rightBarButtonItem = saveButton;
    
    
   self.navigationItem.title = @"New Task";
   self.navigationItem.rightBarButtonItem.title = @"Save";
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"return button pressed");
    [self.taskTextField resignFirstResponder];
     [self.dateDueTextField resignFirstResponder];    
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(void)saveButtonPressed:(id)sender
{
    
    Tasks *task = [Tasks createEntity];
    task.taskdescription=self.taskTextField.text;
    task.duedate=22;

    [[NSManagedObjectContext contextForCurrentThread] saveToPersistentStoreAndWait];
    [self.navigationController popViewControllerAnimated:YES];
}


@end