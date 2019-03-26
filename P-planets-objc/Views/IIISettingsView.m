//
//  IIISettingsView.m
//  P-planets-objc
//
//  Created by Ilgar Ilyasov on 3/25/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIISettingsView.h"


@implementation IIISettingsView

- (IBAction)isPlutoAPlanet:(UISwitch *)sender {
    [_delegate swithTapped];
}

- (IBAction)closeSettings:(UIButton *)sender {
    [_delegate closeTapped];
}

@end
