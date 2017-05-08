//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "SketchImageHandler.h"

@interface LPSViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyesImage;
@property (weak, nonatomic) IBOutlet UIImageView *noseImage;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImage;
@property (nonatomic) SketchImageHandler *imageHandler;


@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageHandler = [[SketchImageHandler alloc]init];
//    self.eyesImage.image = self.imageHandler.selectedEyeImage;
//    self.noseImage.image = self.imageHandler.selectedNoseImage;
//    self.mouthImage.image = self.imageHandler.selectedMouthImage;
    self.eyesImage.image = self.imageHandler.eyeImages[0];
    self.noseImage.image = self.imageHandler.noseImages[0];
    self.mouthImage.image = self.imageHandler.mouthImages[0];
}
- (IBAction)nextEyeImageButton:(id)sender {
    
    self.eyesImage.image = [self.imageHandler nextEyeImage];
}

- (IBAction)previousEyeImageButton:(id)sender {
    
    self.eyesImage.image = [self.imageHandler previousEyeImage];
}

- (IBAction)nextNoseImageButton:(id)sender {
    
    self.noseImage.image = [self.imageHandler nextNoseImage];
}

- (IBAction)previousNoseImageButton:(id)sender {
    
    self.noseImage.image = [self.imageHandler previousNoseImage];
}

- (IBAction)nextMouthImageButton:(id)sender {
    
    self.mouthImage.image = [self.imageHandler nextMouthImage];
}

- (IBAction)previousMouthImageButton:(id)sender {
    
    self.mouthImage.image = [self.imageHandler previousMouthImage];
}


@end
