//
//  tbgViewController.m
//  The Beaker Game
//
//  Created by Susan Elliott Sim on 2014-05-03.
//  Copyright (c) 2014 HHKids2014 Beaker Game. All rights reserved.
//

#import "tbgViewController.h"

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

-(IBAction) increment
{
    UIAlertView *hello = [[UIAlertView alloc ]
                          initWithTitle:@"Beaker Game" message:@"Up" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [hello show];
}

-(IBAction) decrement
{
    UIAlertView *hello = [[UIAlertView alloc ]
                          initWithTitle:@"Beaker Game" message:@"Down" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [hello show];
}


@end
