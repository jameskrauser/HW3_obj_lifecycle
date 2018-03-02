//
//  CViewController.m
//  HW3_lifeCycle
//
//  Created by jameskrauser on 2018/3/2.
//  Copyright © 2018年 jameskrauser. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"[FormC] viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//2
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"[FormC] viewWillAppear");
}

//3
- (void) viewDidAppear:(BOOL)animated {
    NSLog(@"[FormC] viewDidAppear");
}

//4
- (void) viewWillDisappear:(BOOL)animated {
    NSLog(@"[FormC] viewWillDisappear");
}

//5
- (void) viewDidDisappear:(BOOL)animated {
    NSLog(@"[FormC] viewDidDisappear");
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [ segue.identifier isEqualToString:@"BackToFormB" ] ) {
        NSLog(@"[FormC] BackToFormB");
    }else {
        NSLog(@"[FormC] no segue");
    }
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
