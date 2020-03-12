//
//  FactorialObjc.m
//  TacxCpp
//
//  Created by Adam Lovastyik on 12/03/2020.
//  Copyright © 2020 Lovastyik. All rights reserved.
//

#import "FactorialObjc.h"

@implementation FactorialObjc

- (int)factorial:(int)n {
    
    int sum = 1;
    
    for (int i = 1; i <= n; i++) {
        sum = sum * i;
    }
    
    return sum;
}

@end
