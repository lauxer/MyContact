//
//  ContactDetailViewController.m
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self reloadData]; //ttest
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


#pragma mark - DataSource

- (void)reloadData {
    
    self.titleLabel.text = self.contact.title;
    self.firstNameLabel.text = self.contact.firstName;
    self.lastNameLabel.text = self.contact.lastName;
    
    self.streetLabel.text = self.contact.street;
    self.cityLabel.text = self.contact.city;
    self.stateLabel.text = self.contact.state;
    self.zipLabel.text = self.contact.zip;
    
    self.emailLabel.text = self.contact.email;
    self.phoneLabel.text = self.contact.phone;
    self.cellLabel.text = self.contact.cell;
    self.ssnLabel.text = self.contact.ssn;
    
    
    NSURL *url = [NSURL URLWithString:self.contact.imgURL];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
        
    [self.contactImg setImage:image];
}


#pragma mark - IBAction

- (IBAction)tmpBackButtonPressed:(UIButton *)backButton {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
