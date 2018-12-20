//
//  CountryTableViewController.m
//  CountryDemoFZL
//
//  Created by sjl on 2018/5/27.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "CountryTableViewController.h"

@interface CountryTableViewController ()

@end

@implementation CountryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.countryList = [[NSMutableArray alloc]init];
    
    Country *country = [[Country alloc]init];
    country.countryName = @"加拿大";
    country.countryCaptial = @"渥太华";
    country.countryFlag = @"canada.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"中国";
    country.countryCaptial = @"北京";
    country.countryFlag = @"china.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"古巴";
    country.countryCaptial = @"哈瓦那";
    country.countryFlag = @"cuba.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"法国";
    country.countryCaptial = @"巴黎";
    country.countryFlag = @"france.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"德国";
    country.countryCaptial = @"柏林";
    country.countryFlag = @"german.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"印度";
    country.countryCaptial = @"新德里";
    country.countryFlag = @"india.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"日本";
    country.countryCaptial = @"东京";
    country.countryFlag = @"japan.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"韩国";
    country.countryCaptial = @"首尔";
    country.countryFlag = @"korea.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"墨西哥";
    country.countryCaptial = @"墨西哥城";
    country.countryFlag = @"mexico.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"西班牙";
    country.countryCaptial = @"马德里";
    country.countryFlag = @"spain.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"英国";
    country.countryCaptial = @"伦敦";
    country.countryFlag = @"uk.png";
    [self.countryList addObject:country];
    
    country = [[Country alloc]init];
    country.countryName = @"美国";
    country.countryCaptial = @"华盛顿";
    country.countryFlag = @"usa.png";
    [self.countryList addObject:country];
    
    self.yazhouCountryList = [NSMutableArray arrayWithObjects:@"1", @"5", @"6", @"7", nil];
    self.beimeizhouCountryList = [NSMutableArray arrayWithObjects:@"0", @"11", nil];
    self.ouzhouCountryList = [NSMutableArray arrayWithObjects:@"3", @"4", @"9", @"10", nil];
    self.nanmeizhouCountryList = [NSMutableArray arrayWithObjects:@"2", @"8", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}
/* 现在要显示的节的次序如下：
 第1节，即形参section=0，显示亚洲
 第2节，即形参section=1，显示北美洲
 第3节，即形参section=2，显示欧洲
 第4节，即形参section=3，显示南美洲
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger rowNumber = 0;
    switch (section) {
        case 0:
            rowNumber = [self.yazhouCountryList count];
            break;
        case 1:
            rowNumber = [self.beimeizhouCountryList count];
            break;
        case 2:
            rowNumber = [self.ouzhouCountryList count];
            break;
        case 3:
            rowNumber = [self.nanmeizhouCountryList count];
            break;
    }
    return rowNumber;
}

/* 现在要显示的每一个单元格indexPath的内容如下：
 （1）indexPath.section=0，显示亚洲的全部国家
 （a）indexPath.row=0，显示亚洲的第一个国家
 （b）indexPath.row=1，显示亚洲的第二个国家
 （c）indexPath.row=2，显示亚洲的第三个国家
 （d）indexPath.row=3，显示亚洲的第四个国家
 （2）indexPath.section=1，显示北美洲的全部国家
 （a）indexPath.row=0，显示北美洲的第一个国家
 （b）indexPath.row=1，显示北美洲的第二个国家
 （3）indexPath.section=2，显示欧洲的全部国家
 （4）indexPath.section=3，显示南美洲的全部国家
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CountryCell" forIndexPath:indexPath];
    
    NSInteger curSection = indexPath.section;
    NSInteger curRow = indexPath.row;
    NSInteger curCountryIndex = -1;
    NSString *str ;
    switch (curSection) {
        case 0:
            str = [self.yazhouCountryList objectAtIndex:curRow];
            curCountryIndex = [str integerValue];
            break;
        case 1:
            curCountryIndex = [[self.beimeizhouCountryList objectAtIndex:curRow] integerValue];
            break;
        case 2:
            curCountryIndex = [[self.ouzhouCountryList objectAtIndex:curRow]integerValue];
            break;
        case 3:
            curCountryIndex = [[self.nanmeizhouCountryList objectAtIndex:curRow]integerValue];
            break;
    }
    
    Country *country = [self.countryList objectAtIndex:curCountryIndex];
    
    cell.textLabel.text = country.countryName;
    cell.detailTextLabel.text = country.countryCaptial;
    cell.imageView.image = [UIImage imageNamed:country.countryFlag];
    
    return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"ShowCountryDetail"]){
        NSIndexPath *ip = [self.tableView indexPathForSelectedRow];
        Country *cur = [self.countryList objectAtIndex:ip.row];
        CountryDetailViewController *detailVC = [segue destinationViewController];
        // 将当前选中的cur对象传递给detailVC的detailCountry
        detailVC.detailCountry = cur;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *result;
    switch (section) {
        case 0:
            result = @"亚洲国家列表";
            break;
        case 1:
            result = @"北美洲国家列表";
            break;
        case 2:
            result = @"欧洲国家列表";
            break;
        case 3:
            result = @"南美洲国家列表";
            break;
    }
    return result;
}


@end

