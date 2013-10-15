//
//  Person.h
//  BMITime
//
//  Created by Arun Agrawal on 15/10/13.
//  Copyright (c) 2013 Arun Agrawal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setweightInKilos:(int)w;

- (float)bodyMassIndex;
@end
