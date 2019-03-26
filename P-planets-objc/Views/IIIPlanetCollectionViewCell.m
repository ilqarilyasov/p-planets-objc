//
//  IIIPlanetCollectionViewCell.m
//  P-planets-objc
//
//  Created by Ilgar Ilyasov on 3/25/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIIPlanetCollectionViewCell.h"
#import "../Model/IIIPlanet.h"

@implementation IIIPlanetCollectionViewCell

- (void)setPlanet:(IIIPlanet *)planet
{
    if (planet != nil) {
        [_planetNameLabel setText: [planet name]];
        [_planetImageView setImage: [planet image]];
    }
}

@end
