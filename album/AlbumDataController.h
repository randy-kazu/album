//
//  AlbumDataController.h
//  album
//
//  Created by kazu on 2014/12/18.
//  Copyright (c) 2014年 kazu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Album;

@interface AlbumDataController : NSObject

- (NSUInteger)albumCount;

-(Album *)albumAtIndex:(NSUInteger)index;

- (void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary
                    price:(float)price locationInStore:(NSString*)locationInStore;


@end
