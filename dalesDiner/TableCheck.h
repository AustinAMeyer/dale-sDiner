//
//  TableCheck.h
//  dalesDiner
//
//  Created by Austin Meyer on 7/7/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableCheck : NSObject{

}
-(void)addTax;
-(void)addMenuItem:(MenuItem*)menuItem;
-(void)addMenuItems:(NSArray*)menuItemsArray;

/*
 int serverNumber; //which server is handling the table, use an enum
 int mealTime; // breakfast, lunch or dinner, use an enum
 int tableNumber; //which physical table are we sitting at
 int checkID //a unique ID for the tableCheck
 float subTotal;
 float tip;
 float total;
 bool isTakeOut; //dine-in or take-out
 NSMutableArray *itemsOrdered;
 NSDate *timeStamp;
 */

//We'll only include some of the above, at this point

@property (nonatomic) int serverNumber;
@property (nonatomic) float subtotal;
@property (nonatomic) float tip;
@property (nonatomic) float total;
@property (nonatomic) bool isTakeOut;
@property (nonatomic, strong) NSMutableArray *itemsOrdered;

@property (nonatomic) NSString *checkID;
@property (nonatomic) int numberOfGuests;

@end

NS_ASSUME_NONNULL_END
