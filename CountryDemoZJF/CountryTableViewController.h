//
//  CountryTableViewController.h
//  CountryDemoFZL
//
//  Created by sjl on 2018/5/27.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Country.h"
#import "CountryDetailViewController.h"
@interface CountryTableViewController : UITableViewController

@property NSMutableArray *countryList;  //属性
//亚洲4个
@property NSMutableArray *yazhouCountryList;
//欧洲4个
@property NSMutableArray *ouzhouCountryList;
//北美洲3个
@property NSMutableArray *beimeizhouCountryList;
//南美洲1个
@property NSMutableArray *nanmeizhouCountryList;

@end
