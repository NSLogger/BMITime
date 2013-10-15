//
//  Person.m
//  BMITime
//
//  Created by Arun Agrawal on 15/10/13.
//  Copyright (c) 2013 Arun Agrawal. All rights reserved.
//

#import "Person.h"

@implementation Person

- (float)heightInMeters
{
    return heightInMeters;
}

 - (void)setHeightInMeters:(float)h
{
    heightInMeters = h;
}

- (int)weightInKilos
{
    return weightInKilos;
}

- (void)setweightInKilos:(int)w
{
    weightInKilos = w;
}

- (float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
