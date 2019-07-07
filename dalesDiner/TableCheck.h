//
//  TableCheck.h
//  dalesDiner
//
//  Created by Austin Meyer on 7/7/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableCheck : NSObject

@property (nonatomic) int serverNumber;
@property (nonatomic) float subtotal;
@property (nonatomic) float total;
@property (nonatomic) float tip;
@property (nonatomic) bool isTakeOut;
@property (nonatomic, strong) NSMutableArray *itemsOrdered;
@property (nonatomic, readonly) NSString *checkID;


/*
 int ServerNumber; //Which server handles the table
 int tableNumber; //which physical table
 float subtotal;
 float tip;
 bool isTakeOut;
 NSMutableArray *itemsOrdered;
 NSDate *timeStamp;
 */


@end

NS_ASSUME_NONNULL_END
