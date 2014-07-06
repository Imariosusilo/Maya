iOSDesign
=========
Hey Tim,

How to make the page transition activate until the character is stop animating/arrived at the door.
this is my first attempt,

- (IBAction)onTapKitchen:(UITapGestureRecognizer *)sender {[UIView animateKeyframesWithDuration:1 delay:0 options:0 animations:^{
    self.girlView.center = CGPointMake(self.girlView.center.x+500, self.girlView.center.y);
} completion:nil];
    
    UIViewController *vc = [[KitchenViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:vc animated:YES completion:nil];


Thanks