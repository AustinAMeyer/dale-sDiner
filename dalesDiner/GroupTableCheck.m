//
//  GroupTableCheck.m
//  dalesDiner
//
//  Created by Austin Meyer on 7/10/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import "GroupTableCheck.h"

@implementation GroupTableCheck

- (TableCheck*)addTip{
    float tipRate = .2;
    self.tip = self.subtotal * tipRate;
    self.total = self.subtotal + self.tip;
    
    return self;
}



- (TableCheck*)checkMinimum{
    if (self.itemsOrdered.count < self.numberOfGuests) {
        MenuItem *feeItem = [[MenuItem alloc]init];
        feeItem.itemPrice = 3.00;
        feeItem.itemName = @"Group minimum fee";
        int numberOfFees = self.numberOfGuests - self.itemsOrdered.count;
        
        for (int i = numberOfFees; i > 0; i--) {
            [self addMenuItem:feeItem];
        }
    }
    
    return self;
}

@end
