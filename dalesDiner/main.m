//
//  main.m
//  dalesDiner
//
//  Created by Austin Meyer on 7/7/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"


int main(int argc, const char * argv[]) {
   
    TableCheck *table1 = [[TableCheck alloc]init];
    
    table1.subtotal = 15.00;
    table1.tip = 5.00;
    table1.isTakeOut = YES;
    
    float savedTip = table1.tip;
    
    return 0;
}
