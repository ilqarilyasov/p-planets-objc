//
//  IIIPlanetController.h
//  P-planets-objc
//
//  Created by Ilgar Ilyasov on 3/25/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class IIIPlanet;
@interface IIIPlanetController : NSObject

@property (nonatomic, strong, readonly) NSMutableArray<IIIPlanet *>* planets;

@end

NS_ASSUME_NONNULL_END
