//
//  CateringOrder.h
//  dalesDiner
//
//  Created by Austin Meyer on 7/12/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"
#import "MenuItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface CateringOrder : NSObject

@property (nonatomic, strong) NSString *deliveryAddress;
@property (nonatomic, strong) NSString *contactPhone;
@property (nonatomic, strong) NSMutableDictionary *orderFormDict;
@property (nonatomic, strong) TableCheck *tableCheck;
@property (nonatomic, strong) NSMutableArray *menuItems;

- (void)addMenuChoice:(MenuItem*)menuItem;

- (void)setItemQty:(MenuItem*)menuItem withQty:(int)qty;

- (void)createTableCheck;

@end

NS_ASSUME_NONNULL_END
