//
//  ModalViewController.m
//  ModalTest2
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ModalViewController.h"
#import "ViewController.h"
@interface ModalViewController ()

@end

@implementation ModalViewController
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"%@",self.msg);
    self.modalInput.text = self.msg;
}
- (IBAction)closeModalVC:(id)sender {
    ViewController *mainVC = (ViewController *)self.presentingViewController;
    mainVC.mainInput.text = self.modalInput.text;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)viewWillDisappear:(BOOL)animated{
    [self.modalInput resignFirstResponder];
    [super viewWillDisappear:animated];
}
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
