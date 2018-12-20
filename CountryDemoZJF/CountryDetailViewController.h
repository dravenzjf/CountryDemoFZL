//
//  CountryDetailViewController.h
//  CountryDemoFZL
//
//  Created by sjl on 2018/5/27.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Country.h"
@interface CountryDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *cName;
@property (weak, nonatomic) IBOutlet UILabel *cCaptial;
@property (weak, nonatomic) IBOutlet UIImageView *cFlag;
//增加一个要显示的国家对象
@property Country *detailCountry;

@end
