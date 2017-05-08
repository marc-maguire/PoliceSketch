//
//  SketchImageHandler.h
//  PoliceSketch
//
//  Created by Marc Maguire on 2017-05-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

//You’ll want to use only a single instance of this class, so make something that can hold the current name of the image selected for each section of the face, and methods to move backwards and forwards in the list for each section. Make sure they can loop around once they reach the first or last image in a list.

//Now create some methods that the buttons will use as actions to change the current selected image for each section. Think about model-view-controller design and how you’ll get the updated information from the custom class once the image has been updated.

#import <Foundation/Foundation.h>

@interface SketchImageHandler : NSObject

@property (nonatomic, copy) NSArray *eyeImages;
@property (nonatomic, copy) NSArray *noseImages;
@property (nonatomic, copy) NSArray *mouthImages;


@property (nonatomic) UIImage *selectedEyeImage;
@property (nonatomic) UIImage *selectedNoseImage;
@property (nonatomic) UIImage *selectedMouthImage;

-(UIImage *)nextEyeImage;
-(UIImage *)previousEyeImage;
-(UIImage *)nextNoseImage;
-(UIImage *)previousNoseImage;
-(UIImage *)nextMouthImage;
-(UIImage *)previousMouthImage;

@end
