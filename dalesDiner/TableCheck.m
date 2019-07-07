//
//  TableCheck.m
//  dalesDiner
//
//  Created by Austin Meyer on 7/7/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import "TableCheck.h"

@implementation TableCheck

- (id) init {
    self = [super init];
    if (self) {
    self.itemsOrdered = [[NSMutableArray alloc] init];
}
    return self;
}

@end
