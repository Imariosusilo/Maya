//
//  KitchenViewController.m
//  maya
//
//  Created by Imario Susilo on 7/5/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "KitchenViewController.h"
#import "BedroomViewController.h"

@interface KitchenViewController ()
@property (weak, nonatomic) IBOutlet UIButton *backToBedroom;
- (IBAction)onBackToBedroom:(UITapGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *girlView;

@end

@implementation KitchenViewController

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

- (IBAction)onBackToBedroom:(UITapGestureRecognizer *)sender {
    {UIViewController *vc = [[BedroomViewController alloc] init];
        vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        
        [self presentViewController:vc animated:YES completion:nil];
    }
}
@end
