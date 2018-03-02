//
//  ViewController.m
//  HW3_lifeCycle
//
//  Created by jameskrauser on 2018/3/2.
//  Copyright © 2018年 jameskrauser. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//1.
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"[FormA] viewDidLoad");
}

//2
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"[FormA] viewWillAppear");
}

//3
- (void) viewDidAppear:(BOOL)animated {
    NSLog(@"[FormA] viewDidAppear");
}

//4
- (void) viewWillDisappear:(BOOL)animated {
    NSLog(@"[FormA] viewWillDisappear");
}

//5
- (void) viewDidDisappear:(BOOL)animated {
    NSLog(@"[FormA] viewDidDisappear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
     NSLog(@"[FormA] didReceiveMemoryWarning");
}




- ( void ) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [segue.identifier isEqualToString:@"GoToFormB"] ) {
        NSLog(@"[FormA] prepareForSegue ");
        
    }else {
        NSLog(@"[error] No Segue id you selected!.");
    }
}

- (IBAction)button_GoToFrom2:(id)sender {
    
    NSLog(@"[formA] button clicked!");
}



@end
