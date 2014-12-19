//
//  Album.h
//  album
//
//  Created by kazu on 2014/12/18.
//  Copyright (c) 2014年 kazu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject 
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *artist;
@property (nonatomic,copy) NSString *summary;
@property (nonatomic,copy) NSString *locationInStore;

@property (nonatomic,assign) float price;

- (id)initWithTitle:(NSString *)title artist:(NSString *)artist
            summary:(NSString *)summary price:(float)price
    locationInStore:(NSString *)locationInStore;



@end
