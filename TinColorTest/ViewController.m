//
//  ViewController.m
//  TinColorTest
//
//  Created by 雷祥 on 16/12/23.
//  Copyright © 2016年 leixiang. All rights reserved.
//

//https://www.shinobicontrols.com/blog/ios7-day-by-day-day-6-tint-color
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *tinImageView;
@property (weak, nonatomic) IBOutlet UIView *subView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.colorView.tintColor = [UIColor yellowColor];
    self.label.textColor = self.colorView.tintColor;
    //UIImageRenderingModeAlwaysTemplate图片的颜色会根据tintColor变化
    UIImage *image = [[UIImage imageNamed:@"train_calendar"] imageWithRenderingMode:(UIImageRenderingModeAlwaysTemplate)];
    self.tinImageView.image = image;
    self.tinImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.subView.backgroundColor = self.colorView.tintColor;
}

- (IBAction)btnClick:(id)sender {
    self.colorView.tintColor = [UIColor redColor];
    self.label.textColor = self.colorView.tintColor;
    self.subView.backgroundColor = self.colorView.tintColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
