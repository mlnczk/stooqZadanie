//
//  AppDelegate.h
//  stooqZadanie
//
//  Created by Euvic on 04.05.2017.
//  Copyright © 2017 Me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

