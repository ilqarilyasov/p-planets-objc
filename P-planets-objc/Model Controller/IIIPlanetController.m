//
//  IIIPlanetController.m
//  P-planets-objc
//
//  Created by Ilgar Ilyasov on 3/25/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIIPlanetController.h"
#import "../Model/IIIPlanet.h"

@interface IIIPlanetController ()

@property (strong, nonatomic) IIIPlanet *pluto;

@end


@implementation IIIPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planets = [[NSMutableArray alloc] initWithObjects:
                    [[IIIPlanet alloc] initWithName: @"Earth" imageName: @"earth"],
                    [[IIIPlanet alloc] initWithName: @"Jupiter" imageName: @"jupiter"],
                    [[IIIPlanet alloc] initWithName: @"Mars" imageName: @"mars"],
                    [[IIIPlanet alloc] initWithName: @"Mercury" imageName: @"mercury"],
                    [[IIIPlanet alloc] initWithName: @"Neptune" imageName: @"neptune"],
                    [[IIIPlanet alloc] initWithName: @"Saturn" imageName: @"saturn"],
                    [[IIIPlanet alloc] initWithName: @"Uranus" imageName: @"uranus"],
                    [[IIIPlanet alloc] initWithName: @"Venus" imageName: @"venus"], nil];
        _pluto = [[IIIPlanet alloc] initWithName: @"Pluto" imageName: @"pluto"];
        _isPlutoAdded = NO;
    }
    return self;
}

- (void)setIsPlutoAdded:(BOOL)isPlutoAdded
{
    if (self.isPlutoAdded == NO) {
        [[self planets] addObject: self.pluto];
    } else {
        [[self planets] removeObject: self.pluto];
    }
}

@end
