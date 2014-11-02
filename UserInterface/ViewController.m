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
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChangeEvent:(id)sender {
    float value = ((UISlider*)sender).value;
    _lblSliderValue.text = [NSString stringWithFormat:@"Slider Value = %f",value];
}

- (IBAction)switchValueChangeEvent:(id)sender {
    if (((UISwitch*)sender).isOn) {
        _lblSwitchValue.text = @"Switch is On";
    }else{
        _lblSwitchValue.text = @"Switch is Off";
    }
}

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
- (IBAction)stepperValueChange:(id)sender {
    ((UIStepper*)sender).maximumValue = 10;
    NSLog(@"%f",((UIStepper*)sender).value);
    _uiSlider.value = ((UIStepper*)sender).value/10;
    _lblStepperValue.text = [NSString stringWithFormat:@"Stepper Value is %f",((UIStepper*)sender).value];
}

@end
