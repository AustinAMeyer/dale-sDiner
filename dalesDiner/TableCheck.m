//
//  TableCheck.m
//  dalesDiner
//
//  Created by Austin Meyer on 7/7/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import "TableCheck.h"
#import "MenuItem.h"
@implementation TableCheck

float taxRate = .08;

- (id)init {
    self = [super init];
    if (self) {
        self.itemsOrdered = [[NSMutableArray alloc] init];
        
    }
    return self;
}

-(void)addTax{
    
    self.total = self.subtotal * (1 + taxRate);
}

-(void)addMenuItem:(MenuItem*)menuItem{
    
    [self.itemsOrdered addObject:menuItem.itemName];
    self.subtotal += menuItem.itemPrice;
    
}

-(void)addMenuItems:(NSArray*)menuItemsArray{
    
    for (MenuItem *menuItem in menuItemsArray) {
        [self.itemsOrdered addObject:menuItem.itemName];
        self.subtotal += menuItem.itemPrice;
    }
}
@end
