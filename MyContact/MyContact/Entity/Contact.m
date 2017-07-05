//
//  Contact.m
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {

        self.title = dictionary[@"name"][@"title"];
        self.firstName = dictionary[@"name"][@"first"];
        self.lastName = dictionary[@"name"][@"last"];
        
        self.street = dictionary[@"location"][@"street"];
        self.city = dictionary[@"location"][@"city"];
        self.state = dictionary[@"location"][@"state"];
        self.zip = dictionary[@"location"][@"zip"];
        
        self.email = dictionary[@"email"];
        self.phone = dictionary[@"phone"];
        self.cell = dictionary[@"cell"];
        self.ssn = dictionary[@"SSN"];
        
        self.imgURL = dictionary[@"picture"][@"thumbnail"];
    }
    
    return self;
}

@end
