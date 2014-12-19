//
//  AlbumDataController.m
//  album
//
//  Created by kazu on 2014/12/18.
//  Copyright (c) 2014年 kazu. All rights reserved.
//

#import "AlbumDataController.h"
#import "Album.h"

@interface AlbumDataController ()
@property(nonatomic, readonly) NSMutableArray *albumList;

- (void) initializeDefaultAlbums;
@end


@implementation AlbumDataController

-(id) init{
    self = [super init];
    
    if(self){
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbums];
        return self;
        
    }
    return nil;
    
}

-(void)initializeDefaultAlbums{
    
    [self addAlbumWithTitle:@"Infected Splinter" artist:@"Boppin' Bravers" summary:@"Awesome album with a hint of Oak." price:9.99f locationInStore:@"section F"];
    
    [self addAlbumWithTitle:@"Hairy Eyeball" artist:@"Cyslops" summary:@"A 20/20" price:5.99f locationInStore:@"Discount rack"];
    
    [self addAlbumWithTitle:@"squish" artist:@"the bugs" summary:@"not your average" price:14.99f locationInStore:@"section F"];
    
    [self addAlbumWithTitle:@"Acid Fog" artist:@"Josh and Chuck" summary:@"you should know this staff" price:11.99f locationInStore:@"section 9"];
    
}


-(void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore{
    
    Album *newAlbum = [[Album alloc] initWithTitle:title artist:artist summary:summary price:price locationInStore:locationInStore];
    [self.albumList addObject:newAlbum];
    
}

- (NSUInteger)albumCount{
    return [self.albumList count];
    
}


- (Album *)albumAtIndex:(NSUInteger)index{
    
    return [self.albumList objectAtIndex:index];
    
}





@end


