//
//  Employee.m
//  BMITime
//
//  Created by Arun Agrawal on 18/10/13.
//  Copyright (c) 2013 Arun Agrawal. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"


@implementation Employee

@synthesize employeeID;

- (void)addAssetsObject:(Asset *)a
{
    // Is assets nil?
    if (!assets) {
        // Create the array
        
        assets = [[NSMutableArray alloc] init];
    }
    
    [assets addObject:a];
    [a setHolder:self];
    
}

-(unsigned int)valueOfAssets
{
    // Sum up resale value of assets
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}


// method override from NSObject class

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets >",
            [self employeeID], [self valueOfAssets]];
}

// method override from NSObject class
-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}


@end
