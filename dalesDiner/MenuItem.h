//
//  MenuItem.h
//  dalesDiner
//
//  Created by Austin Meyer on 7/7/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MenuItem : NSObject

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic) float itemPrice;
@property (nonatomic) bool isBeverage;



@end

NS_ASSUME_NONNULL_END
