//
//  tbgViewController.h
//  The Beaker Game
//
//  Created by Susan Elliott Sim on 2014-05-03.
//  Copyright (c) 2014 HHKids2014 Beaker Game. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tbgViewController : UIViewController
{
    IBOutlet UIImageView *beakerImageView;
}

-(IBAction) increment;
-(IBAction) decrement;
-(IBAction) displayBeakerImage;


@end
