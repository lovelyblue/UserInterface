//
//  SecoundViewController.m
//  UserInterface
//
//  Created by kylelin on 2014/11/3.
//  Copyright (c) 2014年 kylelin. All rights reserved.
//

#import "SecoundViewController.h"

@interface SecoundViewController ()
@property (weak, nonatomic) IBOutlet UINavigationBar *uiNavigationBar;
@property (weak, nonatomic) IBOutlet UINavigationItem *uiNavigationItem;

@end

@implementation SecoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* previousImage = [UIImage imageNamed:@"previousButton2.png"];
//    [previousImage sc] size = CGSizeMake(15.0f, 10.0f);
    UIBarButtonItem* leftButton = [[UIBarButtonItem alloc] initWithImage:previousImage style:UIBarButtonItemStylePlain target:self action:@selector(previousPage)];
//    [[self navigationItem] setLeftBarButtonItem:leftButton];
//    _uiNavigationBar.n
    _uiNavigationItem.leftBarButtonItem=leftButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)previousPage
{
    NSLog(@"PreviousPage Button Pressed");
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
