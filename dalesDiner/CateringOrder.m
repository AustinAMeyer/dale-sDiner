//
//  CateringOrder.m
//  dalesDiner
//
//  Created by Austin Meyer on 7/12/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import "CateringOrder.h"

@implementation CateringOrder

- (id) init {
    self = [super init];
    if (self) {
        self.orderFormDict = [[NSMutableDictionary alloc] init];
        
        self.menuItems = [[NSMutableArray alloc] init];
        self.tableCheck = [[TableCheck alloc]init];
    }
    return self;
}

- (void)addMenuChoice:(MenuItem*)menuItem{
    [self.orderFormDict addEntriesFromDictionary:@{menuItem.itemName:@0}];
    
       [self.menuItems addObject:menuItem];
}

- (void)setItemQty:(MenuItem*)menuItem withQty:(int)qty{
    [self.orderFormDict setValue:@(qty) forKey:menuItem.itemName];
}

-(void)createTableCheck{
    
    for (id key in self.orderFormDict) {
        
        NSLog(@"key: %@, value: %@", key, [self.orderFormDict objectForKey:key]);
        
        MenuItem *selectedItem;
        
        for (MenuItem *item in self.menuItems) {
            if ([item.itemName isEqualToString:key]) {
                selectedItem = item;
                break;
            }
        }
        
        for (int i = 0; i < [[self.orderFormDict objectForKey:key]intValue]; i++) {
            
            [self.tableCheck addMenuItem:selectedItem];
        }
    }
    
}

@end
