//
//  ViewController.m
//  ModalTest2
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"
@interface ViewController ()

@end

@implementation ViewController
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
-(void)viewDidAppear:(BOOL)animated{
    [self.mainInput resignFirstResponder];
    [super viewDidAppear:animated];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([@"ModalSegue" isEqualToString:segue.identifier]){
        ModalViewController *modalVC = segue.destinationViewController;
        modalVC.msg = self.mainInput.text;
        NSLog(@"mainInput ; %@", self.mainInput.text);
    }
}
- (IBAction)showModal1:(id)sender {
    [self performSegueWithIdentifier:@"ModalSegue" sender:self];
}
- (IBAction)showModal2:(id)sender {
    UIStoryboard *storyboard = self.storyboard;
    ModalViewController *modalVC = [storyboard instantiateViewControllerWithIdentifier:@"modalVC"];
    modalVC.msg = self.mainInput.text;
    [self presentViewController:modalVC animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
