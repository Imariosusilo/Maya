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
@property (weak, nonatomic) IBOutlet UIImageView *checkCereal;
@property (weak, nonatomic) IBOutlet UIImageView *checkFruits;
- (IBAction)onCheckMilk:(UITapGestureRecognizer *)sender;
- (IBAction)onEatCereal:(UITapGestureRecognizer *)sender;
- (IBAction)onEatFruits:(UITapGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIButton *eatCereal;
@property (weak, nonatomic) IBOutlet UIButton *eatFruits;
@property (weak, nonatomic) IBOutlet UIView *doneView;
-(void)CheckResponse;

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
    
    self.doneView.hidden = YES;
    
    self.CheckMilk.hidden = YES;
    self.checkCereal.hidden = YES;
    self.checkFruits.hidden = YES;
    
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
    //{UIViewController *vc = [[BedroomViewController alloc] init];
        //vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        
        //[self presentViewController:vc animated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (IBAction)onCheckMilk:(UITapGestureRecognizer *)sender {
    if (_CheckMilk.hidden == YES) {
        _CheckMilk.hidden = NO;
    } else if (_CheckMilk.hidden == NO){
        _CheckMilk.hidden = YES;
    }
    [self CheckResponse];
}

- (IBAction)onEatCereal:(UITapGestureRecognizer *)sender {
    if (self.checkCereal.hidden == YES) {
        self.checkCereal.hidden =NO;
        
    } else if (self.checkCereal.hidden == NO){
        self.checkCereal.hidden= YES;
    }
    [self CheckResponse];
}



- (IBAction)onEatFruits:(UITapGestureRecognizer *)sender {
    if (self.checkFruits.hidden == YES) {
        self.checkFruits.hidden =NO;
        
    } else if (self.checkFruits.hidden == NO){
        self.checkFruits.hidden= YES;
    }
    [self CheckResponse];


}

-(void)CheckResponse{
    if (self.checkCereal.hidden==NO && self.CheckMilk.hidden==NO && self.checkFruits.hidden==NO) {
        
        self.doneView.hidden = NO;
        self.doneView.alpha=0;
        [UIView animateWithDuration:1 animations:^{
            self.doneView.alpha=1;
        
        }];
        
    }
            
        
    }
@end
