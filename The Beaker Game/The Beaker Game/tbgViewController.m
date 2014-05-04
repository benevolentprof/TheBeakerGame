//
//  tbgViewController.m
//  The Beaker Game
//
//  Created by Susan Elliott Sim on 2014-05-03.
//  Copyright (c) 2014 HHKids2014 Beaker Game. All rights reserved.
//

#import "tbgViewController.h"

NSInteger beakerLevel;

@interface tbgViewController ()

@end

@implementation tbgViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self displayBeakerImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) displayBeakerImage
{
    if (beakerLevel == 0){
        // display empty beaker
        UIImage *img1 = [UIImage imageNamed:@"beaker-0.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 0 && beakerLevel <= 5) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-1.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 5 && beakerLevel <= 10) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-2.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 10 && beakerLevel <= 20) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-3.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 20 && beakerLevel <= 30) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-4.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 30 && beakerLevel <= 40) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-5.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 40 && beakerLevel <= 50) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-6.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 50 && beakerLevel <= 60) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-7.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 60 && beakerLevel <= 70) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-8.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 70 && beakerLevel <= 80) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-9.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 80 && beakerLevel <= 90) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-10.png"];
        [beakerImageView setImage:img1];
        
    } else if (beakerLevel > 90 && beakerLevel <= 100) {
        UIImage *img1 = [UIImage imageNamed:@"beaker-overflow.png"];
        [beakerImageView setImage:img1];
        
    }
    
}


-(IBAction) increment
{
    beakerLevel = beakerLevel + 5;
    
    // check for boundaries
    if(beakerLevel < 0){
        beakerLevel = 0;
    }
    if(beakerLevel > 100){
        beakerLevel = 100;
    }

    //react to number going up
    [self displayBeakerImage];
    
 /*   UIAlertView *hello = [[UIAlertView alloc ]
                          initWithTitle:@"Beaker Game" message: [NSString stringWithFormat:@"%d",beakerLevel] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [hello show];
 */
    

    
}

-(IBAction) decrement
{
    beakerLevel = beakerLevel - 5;
    // check for boundaries
    if(beakerLevel < 0){
        beakerLevel = 0;
    }
    if(beakerLevel > 100){
        beakerLevel = 100;
    }

    //react to number going up
    [self displayBeakerImage];

    /*
    UIAlertView *hello = [[UIAlertView alloc ]
                          initWithTitle:@"Beaker Game" message:[NSString stringWithFormat:@"%d",beakerLevel] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [hello show];
     */
}

-(IBAction) checkBeakerLevel
{
    
    if (beakerLevel == 0){
        [self performSegueWithIdentifier:@"calmFeedbackSegue" sender:self];
    } else if (beakerLevel > 5 && beakerLevel <= 35) {
        [self performSegueWithIdentifier:@"oneThirdFeedbackSegue" sender:self];
    } else if (beakerLevel > 35 && beakerLevel <= 65) {
        [self performSegueWithIdentifier:@"twoThirdsFeedbackSegue" sender:self];
    } else if (beakerLevel > 65 && beakerLevel <= 85) {
        [self performSegueWithIdentifier:@"highFeedbackSegue" sender:self];
    } else if (beakerLevel > 85 && beakerLevel <= 100) {
        [self performSegueWithIdentifier:@"dangerFeedbackSegue" sender:self];
    }
    
    
}


@end
