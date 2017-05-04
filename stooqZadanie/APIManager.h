//
//  APIManager.h
//  stooqZadanie
//
//  Created by Euvic on 04.05.2017.
//  Copyright © 2017 Me. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIManager : NSObject

@property (nonatomic, assign) BOOL internetWasChecked;
+ (instancetype)sharedInstance;

typedef void (^failureBlock)(NSURLSessionTask *operation, id error);
typedef void (^successBlock)(NSURLSessionTask *operation, id responseObject);

-(void)getOperationForAction:(NSString *)action parameters:(NSDictionary *)params completion:(successBlock)success failure:(failureBlock)failure;

@end
