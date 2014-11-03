//
//  ViewController.m
//  UserInterface
//
//  Created by spider1203 on 2014/11/2.
//  Copyright (c) 2014年 kylelin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblSliderValue;
@property (weak, nonatomic) IBOutlet UILabel *lblSwitchValue;
@property (weak, nonatomic) IBOutlet UILabel *lblSegmentValue;
@property (weak, nonatomic) IBOutlet UILabel *lblStepperValue;


@property (weak, nonatomic) IBOutlet UISlider *uiSlider;
@property (weak, nonatomic) IBOutlet UIProgressView *uiProgress;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [NSTimer scheduledTimerWithTimeInterval:0.2f target:self selector:@selector(runningProgress) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ---UISlider---
- (IBAction)sliderValueChangeEvent:(id)sender {
    float value = ((UISlider*)sender).value;
    _lblSliderValue.text = [NSString stringWithFormat:@"Slider Value = %f",value];
}

#pragma mark ---UISwitch---
- (IBAction)switchValueChangeEvent:(id)sender {
    if (((UISwitch*)sender).isOn) {
        _lblSwitchValue.text = @"Switch is On";
    }else{
        _lblSwitchValue.text = @"Switch is Off";
    }
}

#pragma mark ---UISegment---
- (IBAction)segmentValueChange:(id)sender {
    NSInteger segmentValue = ((UISegmentedControl*)sender).selectedSegmentIndex;
    if (segmentValue == 0) {
        _lblSegmentValue.text = @"Segmented Value is 0";
    }else if (segmentValue == 1){
        _lblSegmentValue.text = @"Segmented Value is 1";
    }else if (segmentValue == 2){
        _lblSegmentValue.text = @"Segmented Value is 2";
    }
}

#pragma mark ---UIStepper---
- (IBAction)stepperValueChange:(id)sender {
    ((UIStepper*)sender).maximumValue = 10;
    NSLog(@"%f",((UIStepper*)sender).value);
    _uiSlider.value = ((UIStepper*)sender).value/10;
    _lblStepperValue.text = [NSString stringWithFormat:@"Stepper Value is %f",((UIStepper*)sender).value];
}

#pragma mark ---UIProgress---
-(void)runningProgress
{
    if (_uiProgress.progress != 1) {
        _uiProgress.progress += 0.1f;
    }else{
        _uiProgress.progress = 0.0f;
    }
    
}

@end
