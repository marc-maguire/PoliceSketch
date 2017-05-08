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

    self.eyesImage.image = self.imageHandler.eyeImages[0];
    self.noseImage.image = self.imageHandler.noseImages[0];
    self.mouthImage.image = self.imageHandler.mouthImages[0];
}


- (IBAction)cycleEyeImageButton:(UIButton *)sender {
    
    if (sender.tag == 0) {
        self.eyesImage.image = [self.imageHandler previousEyeImage];
    } else {
        
        self.eyesImage.image = [self.imageHandler nextEyeImage];
    }
}

- (IBAction)cycleNoseImageButton:(UIButton *)sender {
    
    if (sender.tag == 0) {
        self.noseImage.image = [self.imageHandler previousNoseImage];
    } else {
        self.noseImage.image = [self.imageHandler nextNoseImage];
    }
}

- (IBAction)cycleMouthImageButton:(UIButton *)sender {
    
    if (sender.tag == 0) {
        self.mouthImage.image = [self.imageHandler previousMouthImage];
    } else {
        self.mouthImage.image = [self.imageHandler nextMouthImage];
    }
}





@end
