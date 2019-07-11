//
//  main.m
//  dalesDiner
//
//  Created by Austin Meyer on 7/7/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"
#import "MenuItem.h"
#import "GroupTableCheck.h"

int main(int argc, const char * argv[]) {
   
    //create dummy check
    TableCheck *table1 = [[TableCheck alloc]init];
    
   // table1.tip = 5.00;
    table1.isTakeOut = YES;
    
    float savedTip = table1.tip;
    
    //create grilled cheese menuItem
    MenuItem *grilledCheese = [[MenuItem alloc] init];
    grilledCheese.itemName = @"Grilled Cheese";
    grilledCheese.ItemPrice = 4.50;
    
    //create soupDuJour menuItem
    MenuItem *soupDuJour = [[MenuItem alloc]init];
    soupDuJour.itemName = @"Soup du Jour";
    soupDuJour.ItemPrice = 3.25;
   /*
    //adding item 1 (grilled cheese)
    [table1.itemsOrdered addObject:grilledCheese];
    table1.subtotal += grilledCheese.ItemPrice;
    
    //adding item 2 (soup)
    [table1.itemsOrdered addObject:soupDuJour];
    table1.subtotal += soupDuJour.ItemPrice;
    */
    
    [table1 addMenuItem:grilledCheese];
    
    [table1 addMenuItem:soupDuJour];
    
    [table1 addTax];
    
    
    
    GroupTableCheck *group1 = [[GroupTableCheck alloc]init];
    group1.numberOfCustomers = 6;
    [group1 addMenuItem:grilledCheese];
    [group1 addMenuItem:grilledCheese];
    [group1 addMenuItem:grilledCheese];
    [group1 addMenuItem:grilledCheese];
    [group1 addMenuItem:grilledCheese];
    [group1 checkMinimum];
    [group1 addTip];
    
    
    
    return 0;
}
