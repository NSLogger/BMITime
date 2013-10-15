//
//  main.m
//  BMITime
//
//  Created by Arun Agrawal on 15/10/13.
//  Copyright (c) 2013 Arun Agrawal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        Person *person = [[Person alloc] init];
        
        [person setweightInKilos:96];
        [person setHeightInMeters:1.8];
        
        float bmi = [person bodyMassIndex];
        NSLog(@"person (%d, %f) has a BMI of %f",
              [person weightInKilos], [person heightInMeters], bmi);
        
    }
    return 0;
}

