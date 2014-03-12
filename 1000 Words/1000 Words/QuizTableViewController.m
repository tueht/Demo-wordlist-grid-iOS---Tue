//
//  QuizTableViewController.m
//  1000 Words
//
//  Created by Tue Hoang Trong on 3/12/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import "QuizTableViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface QuizTableViewController ()

//@property (nonatomic) NSInteger currentQuestion;;



@end

@implementation QuizTableViewController

static int currentQuestion;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
//    UIImage *buttonImage = [UIImage imageNamed:@"back.png"];
//    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [aButton setImage:buttonImage forState:UIControlStateNormal];
//    aButton.frame = CGRectMake(0.0,0.0,40,40);
//    [aButton addTarget:self action:@selector(home:) forControlEvents:UIControlEventTouchUpInside];
//    
    UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc]
                                      initWithTitle:@"Home"
                                      style:UIBarButtonItemStylePlain
                                      target:self
                                      action:@selector(home:)];
    

//    aButton.titleLabel.text = @"Home";
//    UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithCustomView:aButton];
    
    
    self.navigationItem.leftBarButtonItem=newBackButton;
    
    currentQuestion ++;
    
    [self.questionLabel setText:[NSString stringWithFormat:@"%ld", (long)currentQuestion]];
}


- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
}

-(void)home:(UIBarButtonItem *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0)
        return 1.0f;
    return 32.0f;
}




#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

- (IBAction)backPress:(id)sender {
//    CABasicAnimation* fadeAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
//    fadeAnim.fromValue = [NSNumber numberWithFloat:1.0];
//    fadeAnim.toValue = [NSNumber numberWithFloat:0.0];
//    fadeAnim.duration = 1.0;
//    [self.view.layer addAnimation:fadeAnim forKey:@"opacity"];
//    
//    // Change the actual data value in the layer to the final value.
//    self.view.layer.opacity = 0.0;
    
    // create a CGPath that implements two arcs (a bounce)
//    CGMutablePathRef thePath = CGPathCreateMutable();
//    CGPathMoveToPoint(thePath,NULL,74.0,74.0);
//    CGPathAddCurveToPoint(thePath,NULL,74.0,500.0,
//                          320.0,500.0,
//                          320.0,74.0);
//    CGPathAddCurveToPoint(thePath,NULL,320.0,500.0,
//                          566.0,500.0,
//                          566.0,74.0);
//    
//    CAKeyframeAnimation * theAnimation;
//    
//    // Create the animation object, specifying the position property as the key path.
//    theAnimation=[CAKeyframeAnimation animationWithKeyPath:@"position"];
//    theAnimation.path=thePath;
//    theAnimation.duration=5.0;
//    
    // Add the animation to the layer.
//    [self.view.layer addAnimation:theAnimation forKey:@"position"];
    
//    [self.view setAlpha:0.f];
//    
//    [UIView animateWithDuration:0.5f delay:0.f options:UIViewAnimationOptionCurveEaseIn animations:^{
//        [self.view setAlpha:0.3f];
//    } completion:^(BOOL finished) {
//        [UIView animateWithDuration:0.7f delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
//            [self.view setAlpha:1.f];
//        } completion:nil];
//    }];
//
//    [self.view setAlpha:0.0f];
//    
//    [self.view setAlpha:1.0f];
   // [self switchTwoViews:self otherView:self direction:0];
    
    //[self SwipeLeft:self.tableView];
   // [self.navigationController m animated:NO];
    
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark handle class variables




-(void)SwipeRight:(UIView *)view{
    
    CATransition* transition = [CATransition animation];
    [transition setDuration:0.5];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    [transition setFillMode:kCAFillModeBoth];
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [view.layer addAnimation:transition forKey:kCATransition];
}

-(void)SwipeLeft:(UIView *)view{
    CATransition* transition = [CATransition animation];
    [transition setDuration:0.5];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    [transition setFillMode:kCAFillModeBoth];
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [view.layer addAnimation:transition forKey:kCATransition];
}

- (void)switchTwoViews:(UIView *)view1 otherView:(UIView *)view2 direction:(int)directionRL{
    view2.bounds = CGRectMake(0, 0, 480, 320);
    self.view = view2;
    // remove the current view and replace with view1
    [view1 removeFromSuperview];
    [self.view addSubview:view2];
    
    // set up an animation for the transition between the views
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.5];
    [animation setType:kCATransitionPush];
    if (directionRL == 0) {
        [animation setSubtype:kCATransitionFromRight];
    } else {
        [animation setSubtype:kCATransitionFromLeft];
    }
    
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    [[self.view layer] addAnimation:animation forKey:@"SwitchToView"];
}

@end
