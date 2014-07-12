//
//  BedroomViewController.m
//  maya
//
//  Created by Timothy Lee on 6/26/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "BedroomViewController.h"
#import "BathViewController.h"
#import "KitchenViewController.h"

@interface BedroomViewController ()

@property (weak, nonatomic) IBOutlet UIView *doorView;
@property (weak, nonatomic) IBOutlet UIView *kitchenDoorView;
@property (weak, nonatomic) IBOutlet UIImageView *girlView;

- (IBAction)onTapBathroom:(UITapGestureRecognizer *)sender;
- (IBAction)onTapKitchen:(UITapGestureRecognizer *)sender;

@end

@implementation BedroomViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.girlView.transform = CGAffineTransformMakeRotation(-3.0 * M_PI / 180.0);
    

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
        self.girlView.transform = CGAffineTransformMakeRotation(3.0 * M_PI / 180.0);
    } completion:nil];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTapBathroom:(UITapGestureRecognizer *)sender {
    NSLog(@"Tapped bathroom");
    [UIView animateWithDuration:1 delay:0 options:0 animations:^{
        self.girlView.center = CGPointMake(self.girlView.center.x + 550, self.girlView.center.y);
    }  completion:^(BOOL finished) {
        UIViewController *vc = [[BathViewController alloc] init];
        vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        
        [self presentViewController:vc animated:YES completion:nil];
    }];
}

- (IBAction)onTapKitchen:(UITapGestureRecognizer *)sender {[UIView animateKeyframesWithDuration:1 delay:0 options:0 animations:^{
    self.girlView.center = CGPointMake(self.girlView.center.x+500, self.girlView.center.y);
}  completion:^(BOOL finished) {
    UIViewController *vc = [[KitchenViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:vc animated:YES completion:nil];
     }];

}

@end
