//
//  APIManager.h
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface APIManager : NSObject

+ (id)sharedManager;

- (NSArray *)contactList;
- (NSDictionary *)myContact;

@end
