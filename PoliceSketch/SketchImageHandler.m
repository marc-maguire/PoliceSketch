//
//  SketchImageHandler.m
//  PoliceSketch
//
//  Created by Marc Maguire on 2017-05-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "SketchImageHandler.h"

@interface SketchImageHandler()

@property (nonatomic) NSInteger eyeImageIndex;
@property (nonatomic) NSInteger noseImageIndex;
@property (nonatomic) NSInteger mouthImageIndex;

@end

@implementation SketchImageHandler

-(instancetype)init {
    
    if (self = [super init]) {
        
        _eyeImages = @[ [UIImage imageNamed:@"eyes_1.jpg"],
                        [UIImage imageNamed:@"eyes_2.jpg"],
                        [UIImage imageNamed:@"eyes_3.jpg"],
                        [UIImage imageNamed:@"eyes_4.jpg"],
                        [UIImage imageNamed:@"eyes_5.jpg"]
                        ];
        _eyeImageIndex = 0;
        
        _noseImages = @[ [UIImage imageNamed:@"nose_1.jpg"],
                         [UIImage imageNamed:@"nose_2.jpg"],
                         [UIImage imageNamed:@"nose_3.jpg"],
                         [UIImage imageNamed:@"nose_4.jpg"],
                         [UIImage imageNamed:@"nose_5.jpg"]
                         ];
        _noseImageIndex = 0;
        
        _mouthImages = @[ [UIImage imageNamed:@"mouth_1.jpg"],
                          [UIImage imageNamed:@"mouth_2.jpg"],
                          [UIImage imageNamed:@"mouth_3.jpg"],
                          [UIImage imageNamed:@"mouth_4.jpg"],
                          [UIImage imageNamed:@"mouth_5.jpg"]
                          ];
        _mouthImageIndex = 0;
        
//        _selectedEyeImage = _eyeImages[0];
//        _selectedNoseImage = _noseImages[0];
//        _selectedMouthImage = _mouthImages[0];

    
    }
    
    
    return self;
}


//    return self.eyeImages[self.eyeImageIndex];

-(UIImage *)nextEyeImage {
    
    if (self.eyeImageIndex < self.eyeImages.count-1) {
        self.eyeImageIndex ++;
        return self.eyeImages[self.eyeImageIndex];
    } else {
        self.eyeImageIndex = 0;
        return self.eyeImages[self.eyeImageIndex];
    }
}
-(UIImage *)previousEyeImage{
    
    if (self.eyeImageIndex > 0) {
        self.eyeImageIndex --;
        return self.eyeImages[self.eyeImageIndex];
    } else {
        self.eyeImageIndex = self.eyeImages.count-1;
        return self.eyeImages[self.eyeImageIndex];
    }
}
-(UIImage *)nextNoseImage{
    
    if (self.noseImageIndex < self.noseImages.count-1) {
        self.noseImageIndex ++;
        return self.noseImages[self.noseImageIndex];
    } else {
        self.noseImageIndex = 0;
        return self.noseImages[self.noseImageIndex];
    }
}
-(UIImage *)previousNoseImage{
    
    if (self.noseImageIndex > 0) {
        self.noseImageIndex --;
        return self.noseImages[self.noseImageIndex];
    } else {
        self.noseImageIndex = self.noseImages.count-1;
        return self.noseImages[self.noseImageIndex];
    }
}
-(UIImage *)nextMouthImage{
    
    if (self.mouthImageIndex < self.mouthImages.count-1) {
        self.mouthImageIndex ++;
        return self.mouthImages[self.mouthImageIndex];
    } else {
        self.mouthImageIndex = 0;
        return self.mouthImages[self.mouthImageIndex];
    }
}
-(UIImage *)previousMouthImage{
    
    if (self.mouthImageIndex > 0) {
        self.mouthImageIndex --;
        return self.mouthImages[self.mouthImageIndex];
    } else {
        self.mouthImageIndex = self.mouthImages.count-1;
        return self.mouthImages[self.mouthImageIndex];
    }
}
    









@end
