//
//  Contact.h
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString      *title;
@property (nonatomic, strong) NSString      *firstName;
@property (nonatomic, strong) NSString      *lastName;
@property (nonatomic, strong) NSString      *street;
@property (nonatomic, strong) NSString      *city;
@property (nonatomic, strong) NSString      *state;
@property (nonatomic, strong) NSString      *zip;
@property (nonatomic, strong) NSString      *email;
@property (nonatomic, strong) NSString      *phone;
@property (nonatomic, strong) NSString      *cell;
@property (nonatomic, strong) NSString      *ssn;
@property (nonatomic, strong) NSString      *imgURL;


- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
