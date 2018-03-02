//
//  BViewController.m
//  HW3_lifeCycle
//
//  Created by jameskrauser on 2018/3/2.
//  Copyright © 2018年 jameskrauser. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

//1
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"[FormB] viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
     NSLog(@"[FormB] didReceiveMemoryWarning");
}

//2
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"[FormB] viewWillAppear");
}

//3
- (void) viewDidAppear:(BOOL)animated {
    NSLog(@"[FormB] viewDidAppear");
}

//4
- (void) viewWillDisappear:(BOOL)animated {
    NSLog(@"[FormB] viewWillDisappear");
}

//5
- (void) viewDidDisappear:(BOOL)animated {
    NSLog(@"[FormB] viewDidDisappear");
}


- ( void ) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [segue.identifier isEqualToString:@"GoToFormC"] ) {
        NSLog(@"[FormB] prepareForSegue - Go To Form C ");
        
    } else if ( [segue.identifier isEqualToString:@"BackToFormA"] ) {
        NSLog(@"[FormB] prepareForSegue - Back To Form A");
    }
    else {
        NSLog(@"[error] No Segue id you selected!.");
    }
}

- (IBAction)button_GoToFromC:(id)sender {
    NSLog(@"[formB] button Go To Form C");
}
- (IBAction)Button_BackToFormA:(id)sender {
    NSLog(@"[formB] button Back To Form A!");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
