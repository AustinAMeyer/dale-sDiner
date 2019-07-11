//
//  GroupTableCheck.m
//  dalesDiner
//
//  Created by Austin Meyer on 7/10/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import "GroupTableCheck.h"

@implementation GroupTableCheck

- (void)addTip{
    float tipRate = .2;
    self.tip = self.subtotal * tipRate;
    self.total = self.subtotal + self.tip;
}



- (void)checkMinimum{
    if (self.itemsOrdered.count < self.numberOfCustomers) {
        MenuItem *feeItem = [[MenuItem alloc]init];
        feeItem.ItemPrice = 3.00;
        feeItem.itemName = @"Group minimum fee";
        int numberOfFees = self.numberOfCustomers - self.itemsOrdered.count;
        
        for (int i = numberOfFees; i > 0; i--) {
            [self addMenuItem:feeItem];
        }
    }
}

@end
