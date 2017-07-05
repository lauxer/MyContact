//
//  ContactListViewController.h
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactCollectionViewCell.h"
#import "ContactDetailViewController.h"

@interface ContactListViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UITabBarControllerDelegate>

@property (nonatomic, strong) IBOutlet UICollectionView     *collectionView;

@end
