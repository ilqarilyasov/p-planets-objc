//
//  IIISettingsView.h
//  P-planets-objc
//
//  Created by Ilgar Ilyasov on 3/25/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IIISettingsViewDelegate <NSObject>

@required
- (void)swithTapped;
- (void)closeTapped;

@end

@interface IIISettingsView : UIView

@property (weak, nonatomic) id <IIISettingsViewDelegate> delegate;

- (IBAction)isPlutoAPlanet:(UISwitch *)sender;
- (IBAction)closeSettings:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
