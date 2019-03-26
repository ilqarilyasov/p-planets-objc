//
//  IIIPlanet.h
//  P-planets-objc
//
//  Created by Ilgar Ilyasov on 3/25/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIIPlanet : NSObject

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIImage *image;

@end

NS_ASSUME_NONNULL_END
