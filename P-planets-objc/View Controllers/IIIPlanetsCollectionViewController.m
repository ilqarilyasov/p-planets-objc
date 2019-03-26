//
//  IIIPlanetsCollectionViewController.m
//  P-planets-objc
//
//  Created by Ilgar Ilyasov on 3/25/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIIPlanetsCollectionViewController.h"
#import "../Model Controller/IIIPlanetController.h"
#import "../Model/IIIPlanet.h"
#import "../Views/IIIPlanetCollectionViewCell.h"


#pragma mark - Private Properties

@interface IIIPlanetsCollectionViewController ()

@property (strong, nonatomic) IIIPlanetController *planetController;
@property (strong, nonatomic) IBOutlet IIISettingsView *settingsView;
@property (strong, nonatomic) UIVisualEffectView *blurEffectView;
@property (nonatomic) BOOL settingsIsOpened;

@end


#pragma mark - Actual implementations

@implementation IIIPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    _planetController = [[IIIPlanetController alloc] init];
    _settingsIsOpened = NO;
}

- (IBAction)openSettings:(UIBarButtonItem *)sender {
    if (self.settingsIsOpened) {
        self.settingsIsOpened = NO;
        [[self blurEffectView] removeFromSuperview];
        [[self settingsView] removeFromSuperview];
    } else {
        self.settingsIsOpened = YES;
        [self addBlur];
        [[self view] addSubview: [self settingsView]];
        self.settingsView.center = CGPointMake(self.view.frame.size.width / 2,
                                               self.view.frame.size.height / 2);
        [[[self settingsView] layer] setCornerRadius: 20];
        [[[self settingsView] layer] setMasksToBounds: YES];
    }
}

- (void) addBlur {
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    _blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
    _blurEffectView.frame = self.view.bounds;
    _blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self.view addSubview:_blurEffectView];
}


#pragma mark - <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[[self planetController] planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    IIIPlanetCollectionViewCell *planetCell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    IIIPlanet *planet = [[[self planetController] planets] objectAtIndex:[indexPath row]];
    [planetCell setPlanet: planet];
    
    return planetCell;
}

#pragma mark - <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

- (void)closeTapped {
    
}

- (void)swithTapped {
    
}

@end
