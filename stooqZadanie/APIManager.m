//
//  APIManager.m
//  stooqZadanie
//
//  Created by Euvic on 04.05.2017.
//  Copyright © 2017 Me. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager

- (void)getOperationForAction:(NSString *)action parameters:(NSDictionary *)params completion:(successBlock)success failure:(failureBlock)failure{
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/xml"];
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
//    [manager GET:action parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSString *responseString = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
//        NSDictionary *dict = [XMLReader dictionaryForXMLString:responseString error:nil];
//        success(nil, dict);
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        failure(nil, error);
//    }];
}

+ (instancetype)sharedInstance {
    static id sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

@end
