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
#import "CateringOrder.h"

int main(int argc, const char * argv[]) {
   
    //create grilled cheese menuItem
    MenuItem *grilledCheese = [[MenuItem alloc]init];
    grilledCheese.itemName = @"Grilled Cheese";
    grilledCheese.itemPrice = 4.50;
    
    //create soupDuJour menuItem
    MenuItem *soupDuJour = [[MenuItem alloc]init];
    soupDuJour.itemName = @"Soup du Jour";
    soupDuJour.itemPrice = 3.25;
    
    //create dummy tableCheck
    TableCheck *table1 = [[TableCheck alloc]init];
    table1.tip      = 5;
    table1.isTakeOut = YES;
    
    /*
     //Add item 1 to table check
     [table1.itemsOrdered addObject:grilledCheese];
     table1.subtotal += grilledCheese.itemPrice;
     
     //Add item 2 to table check
     [table1.itemsOrdered addObject:soupDuJour];
     table1.subtotal += soupDuJour.itemPrice;
     */
    /*
     [table1 addMenuItem:grilledCheese
     */
    
    [table1 addMenuItems:@[grilledCheese, soupDuJour]];
    
    
    [table1 addTax];
    
    float savedTip = table1.tip;
    
    
    GroupTableCheck *group1 = [[GroupTableCheck alloc]init];
    [group1 addMenuItem:grilledCheese];
    [group1 addTip];
    group1.numberOfGuests = 7;
    
    [group1 checkMinimum];
    
    CateringOrder *catering1 = [[CateringOrder alloc]init];
    [catering1 addMenuChoice:grilledCheese];
    [catering1 addMenuChoice:soupDuJour];
    
    [catering1 setItemQty:grilledCheese withQty:4];
    
    [catering1 createTableCheck];
    
    return 0;
}
