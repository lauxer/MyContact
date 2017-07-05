//
//  APIManager.m
//  MyContact
//
//  Created by Cyril Lauxerrois on 05/07/2017.
//  Copyright © 2017 Cyril Lauxerrois. All rights reserved.
//

#import "APIManager.h"

#define _API_URL @"http://www.storage42.com/contacts.json"

@implementation APIManager

+ (id)sharedManager {
    static APIManager *manager = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    
    return manager;
}

- (NSArray *)contactList {
    NSString *url= [NSString stringWithFormat:_API_URL];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    NSError *error;
    
    NSMutableDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    NSArray *contactList = [NSArray arrayWithArray:[json objectForKey:@"contacts"]];
    
    return contactList;
}

- (NSDictionary *)myContact {
    NSString *url= [NSString stringWithFormat:_API_URL];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    NSError *error;
    
    NSMutableDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    NSDictionary *myContact = [NSDictionary dictionaryWithDictionary:[json objectForKey:@"me"]];

    return myContact;
}


@end
