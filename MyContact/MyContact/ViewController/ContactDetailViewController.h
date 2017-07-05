//
//  ContactDetailViewController.h
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

@interface ContactDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView  *contactImg;
@property (nonatomic, strong) IBOutlet UILabel      *titleLabel;
@property (nonatomic, strong) IBOutlet UILabel      *firstNameLabel;
@property (nonatomic, strong) IBOutlet UILabel      *lastNameLabel;
@property (nonatomic, strong) IBOutlet UILabel      *streetLabel;
@property (nonatomic, strong) IBOutlet UILabel      *cityLabel;
@property (nonatomic, strong) IBOutlet UILabel      *stateLabel;
@property (nonatomic, strong) IBOutlet UILabel      *zipLabel;
@property (nonatomic, strong) IBOutlet UILabel      *emailLabel;
@property (nonatomic, strong) IBOutlet UILabel      *phoneLabel;
@property (nonatomic, strong) IBOutlet UILabel      *cellLabel;
@property (nonatomic, strong) IBOutlet UILabel      *ssnLabel;

@property (nonatomic, strong) IBOutlet UIButton     *backButton;

@property (nonatomic, strong) Contact               *contact;

- (void)reloadData;

@end
