//
//  BathViewController.m
//  maya
//
//  Created by Imario Susilo on 7/5/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "BathViewController.h"
#import "BedroomViewController.h"

@interface BathViewController ()

@property (weak, nonatomic) IBOutlet UIButton *backToRoom;
- (IBAction)onBackToRoom:(UITapGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *girlView;
@property (weak, nonatomic) IBOutlet UIButton *brushTeeth;
@property (weak, nonatomic) IBOutlet UIButton *takeShower;
@property (weak, nonatomic) IBOutlet UIButton *goPotty;
@property (weak, nonatomic) IBOutlet UIImageView *checkBrush;
@property (weak, nonatomic) IBOutlet UIImageView *checkShower;
@property (weak, nonatomic) IBOutlet UIImageView *checkPotty;
- (IBAction)onBrush:(UITapGestureRecognizer *)sender;
- (IBAction)onShower:(UITapGestureRecognizer *)sender;
- (IBAction)onPotty:(UITapGestureRecognizer *)sender;

@end

@implementation BathViewController

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
    
    self.checkBrush.hidden = YES;
    self.checkShower.hidden = YES;
    self.checkPotty.hidden = YES;
    
    self.girlView.transform = CGAffineTransformMakeRotation(-3.0 * M_PI / 180.0);
    
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
        self.girlView.transform = CGAffineTransformMakeRotation(3.0 * M_PI / 180.0);
    } completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onBackToRoom:(UITapGestureRecognizer *)sender {UIViewController *vc = [[BedroomViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:vc animated:YES completion:nil];
}
- (IBAction)onBrush:(UITapGestureRecognizer *)sender {
    if (self.checkBrush.hidden == YES) {
        self.checkBrush.hidden = NO;
    } else if (self.checkBrush.hidden == NO){
        self.checkBrush.hidden = YES;
    }

}

- (IBAction)onShower:(UITapGestureRecognizer *)sender {
    if (self.checkShower.hidden == YES) {
        self.checkShower.hidden = NO;
    } else if (self.checkShower.hidden == NO){
        self.checkShower.hidden = YES;
    }

}

- (IBAction)onPotty:(UITapGestureRecognizer *)sender {
    if (self.checkPotty.hidden == YES) {
        self.checkPotty.hidden = NO;
    } else if (self.checkPotty.hidden == NO){
        self.checkPotty.hidden = YES;
    }

    
}
@end
