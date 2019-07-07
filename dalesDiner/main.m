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

int main(int argc, const char * argv[]) {
   
    TableCheck *table1 = [[TableCheck alloc]init];
    
   // table1.subtotal = 15.00;
   // table1.tip = 5.00;
    table1.isTakeOut = YES;
    
    float savedTip = table1.tip;
    
    MenuItem *grilledCheese = [[MenuItem alloc] init];
    grilledCheese.itemName = @"Grilled Cheese";
    grilledCheese.ItemPrice = 4.50;
    
    MenuItem *soupDuJour = [[MenuItem alloc]init];
    soupDuJour.itemName = @"Soup du Jour";
    soupDuJour.ItemPrice = 3.25;
    
    //table1.itemsOrdered = [[NSMutableArray alloc] init];
    [table1.itemsOrdered addObject:grilledCheese];
    table1.subtotal += grilledCheese.ItemPrice;
    
    [table1.itemsOrdered addObject:soupDuJour];
    table1.subtotal += soupDuJour.ItemPrice;
    
    return 0;
}
