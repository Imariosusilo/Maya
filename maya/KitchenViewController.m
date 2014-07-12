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
@property (weak, nonatomic) IBOutlet UIButton *MilkButton;
@property (weak, nonatomic) IBOutlet UIImageView *CheckMilk;
- (IBAction)onCheckMilk:(UITapGestureRecognizer *)sender;

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
    
    self.CheckMilk.hidden = YES;
    
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
- (IBAction)onCheckMilk:(UITapGestureRecognizer *)sender {
    if (_CheckMilk.hidden == YES) {
        _CheckMilk.hidden = NO;
    } else if (_CheckMilk.hidden == NO){
        _CheckMilk.hidden = YES;
    }
}
@end
