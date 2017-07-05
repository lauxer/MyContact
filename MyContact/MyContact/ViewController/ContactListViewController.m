//
//  ContactListViewController.m
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import "ContactListViewController.h"
#import "APIManager.h"
#import "AppDelegate.h"
#import "Contact.h"


#define _CONTACT_CELL @"contactCell"
#define _SHOW_CONTACT_SEGUE @"showContactSegue"


@interface ContactListViewController ()

@property (nonatomic, strong) NSArray *contactList;

@end

@implementation ContactListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UITabBarController *rootController = (UITabBarController *)[[(AppDelegate *)[[UIApplication sharedApplication] delegate] window] rootViewController];
    rootController.delegate = self;

    
    APIManager *apiManager = [APIManager sharedManager];
    self.contactList = [apiManager contactList];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



#pragma mark - UICollectionView DataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.contactList.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ContactCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:_CONTACT_CELL forIndexPath:indexPath];
    
    Contact *contact = [[Contact alloc] initWithDictionary:self.contactList[indexPath.row]];

    [cell.contactFirstName setText:contact.firstName];
    [cell.contactLastName setText:contact.lastName];
    
    return cell;
}



#pragma mark - UICollectionView Delegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:_SHOW_CONTACT_SEGUE sender:indexPath];
}



#pragma mark - UITabBarControllerDelegate

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    
    if ([viewController isKindOfClass:[ContactDetailViewController class]]) {
        ContactDetailViewController *detailController = (ContactDetailViewController *)viewController;
        APIManager *apiManager = [APIManager sharedManager];
        
        detailController.contact = [[Contact alloc] initWithDictionary:[apiManager myContact]];
        [detailController reloadData];
        detailController.backButton.hidden = YES;
    }
    
}



#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:_SHOW_CONTACT_SEGUE]) {
        NSIndexPath *indexPath = (NSIndexPath *)sender;
        
        ContactDetailViewController *detailController = (ContactDetailViewController *)segue.destinationViewController;
        
        detailController.contact = [[Contact alloc] initWithDictionary:self.contactList[indexPath.row]];
    }
}





@end
