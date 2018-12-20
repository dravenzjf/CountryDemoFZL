//
//  CountryDetailViewController.m
//  CountryDemoFZL
//
//  Created by sjl on 2018/5/27.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "CountryDetailViewController.h"

@interface CountryDetailViewController ()

@end

@implementation CountryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.cName setText:self.detailCountry.countryName];
    [self.cCaptial setText:self.detailCountry.countryCaptial];
    UIImage *flag = [UIImage imageNamed:self.detailCountry.countryFlag];
    [self.cFlag setImage:flag];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

