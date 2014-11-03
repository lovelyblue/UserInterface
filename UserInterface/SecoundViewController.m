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
//@property (weak, nonatomic) IBOutlet UIBarButtonItem *uiRightButton;
@end

@implementation SecoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGRect rect = _uiNavigationBar.frame;
    UIImage* previousImage = [UIImage imageNamed:@"previousButton2.png"];

    UIImage* preImage = [self resizeImage:previousImage scaleToSize:CGSizeMake(60.0f, rect.size.height)];
    
    UIBarButtonItem* leftButton = [[UIBarButtonItem alloc] initWithImage:preImage style:UIBarButtonItemStylePlain target:self action:@selector(previousPage)];
    UIBarButtonItem* leftButtonStyle2= [[UIBarButtonItem alloc] initWithTitle:@"上一頁" style:UIBarButtonItemStylePlain target:nil action:@selector(previousPage)];
//    _uiNavigationItem.leftBarButtonItem=leftButton;//leftButtonStyle2;
    
    _uiNavigationBar.topItem.title=@"我在第二頁";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)previousPage
{
    NSLog(@"PreviousPage Button Pressed");
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self performSegueWithIdentifier:@"backto1" sender:self];
    
}

-(UIImage*)resizeImage:(UIImage*)originalImage scaleToSize:(CGSize)size
{
    if (CGSizeEqualToSize(originalImage.size, size)) {
        return originalImage;
    }
    //create drawing context
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    //draw
    [originalImage drawInRect:CGRectMake(0.0f, 0.0f, size.width, size.height)];
    
    //capture
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //return image
    return image;
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
