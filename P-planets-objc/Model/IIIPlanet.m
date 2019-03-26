//
//  IIIPlanet.m
//  P-planets-objc
//
//  Created by Ilgar Ilyasov on 3/25/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIIPlanet.h"

@implementation IIIPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
{
    self = [super init];
    
    if (self) {
        _name = name;
        _image = [UIImage imageNamed:imageName];
    }
    
    return self;
}


@end
