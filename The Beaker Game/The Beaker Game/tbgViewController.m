//
//  tbgViewController.m
//  The Beaker Game
//
//  Created by Susan Elliott Sim on 2014-05-03.
//  Copyright (c) 2014 HHKids2014 Beaker Game. All rights reserved.
//

#import "tbgViewController.h"

NSInteger beakerLevel = 0;

@interface tbgViewController ()

@end

@implementation tbgViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
-(IBAction) displayBeakerImage
{
    if (beakerLevel == 0){
        // display empty beaker
        
    } else if (beakerLevel > 0 && beakerLevel <= 5) {
        
    } else if (beakerLevel > 5 && beakerLevel <= 10) {
        
    } else if (beakerLevel > 10 && beakerLevel <= 20) {
        
    } else if (beakerLevel > 20 && beakerLevel <= 30) {
        
    } else if (beakerLevel > 30 && beakerLevel <= 40) {
        
    } else if (beakerLevel > 40 && beakerLevel <= 50) {
        
    } else if (beakerLevel > 50 && beakerLevel <= 60) {
        
    } else if (beakerLevel > 60 && beakerLevel <= 70) {
        
    } else if (beakerLevel > 70 && beakerLevel <= 80) {
        
    } else if (beakerLevel > 80 && beakerLevel <= 90) {
        
    } else if (beakerLevel > 90 && beakerLevel <= 100) {
        
    }
    
}
 */

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
    
    displayBeakerImage();
    
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

    /*
    UIAlertView *hello = [[UIAlertView alloc ]
                          initWithTitle:@"Beaker Game" message:[NSString stringWithFormat:@"%d",beakerLevel] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [hello show];
     */
}



@end
