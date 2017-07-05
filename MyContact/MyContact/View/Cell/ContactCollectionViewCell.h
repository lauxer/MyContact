//
//  ContactCollectionViewCell.h
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) IBOutlet UILabel   *contactFirstName;
@property (nonatomic, strong) IBOutlet UILabel   *contactLastName;

@end
