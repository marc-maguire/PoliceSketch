//
//  SketchImageHandler.m
//  PoliceSketch
//
//  Created by Marc Maguire on 2017-05-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "SketchImageHandler.h"

@implementation SketchImageHandler

-(instancetype)init {
    
    if (self = [super init]) {
        
        _eyeImages = [[NSArray alloc]initWithObjects: [UIImage imageNamed:@"eyes_1.jpg"],
                                                      [UIImage imageNamed:@"eyes_2.jpg"],
                                                      [UIImage imageNamed:@"eyes_3.jpg"],
                                                      [UIImage imageNamed:@"eyes_4.jpg"],
                                                      [UIImage imageNamed:@"eyes_5.jpg"],
                                                        nil];
        _eyeImages = [[NSArray alloc]initWithObjects: [UIImage imageNamed:@"eyes_1.jpg"],
                                                      [UIImage imageNamed:@"eyes_2.jpg"],
                                                      [UIImage imageNamed:@"eyes_3.jpg"],
                                                      [UIImage imageNamed:@"eyes_4.jpg"],
                                                      [UIImage imageNamed:@"eyes_5.jpg"],
                                                      nil];
        
        _mouthImages = [[NSArray alloc]initWithObjects: [UIImage imageNamed:@"eyes_1.jpg"],
                                                        [UIImage imageNamed:@"eyes_2.jpg"],
                                                        [UIImage imageNamed:@"eyes_3.jpg"],
                                                        [UIImage imageNamed:@"eyes_4.jpg"],
                                                        [UIImage imageNamed:@"eyes_5.jpg"],
                                                        nil];
    }
    
    
    return self;
}

@end
