//
//  QuizPageViewController.m
//  1000 Words
//
//  Created by Tue Hoang Trong on 3/10/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import "QuizPageViewController.h"
#import "QuizViewController.h"

@interface QuizPageViewController ()

@end

@implementation QuizPageViewController

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
	// Do any additional setup after loading the view.
    
 // self. = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    

    
//    self.pageViewController.dataSource = self;
//    [[self.pageController view] setFrame:[[self view] bounds]];
//    
//    QuizViewController *initialViewController = [self viewControllerAtIndex:0];
//    
//    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
//    
//    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
//    
//    [self addChildViewController:self.pageController];
//    [[self view] addSubview:[self.pageController view]];
//    [self.pageController didMoveToParentViewController:self];
//    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(QuizViewController *)viewController index];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(QuizViewController *)viewController index];
    
    
    index++;
    
    if (index == 5) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
    
}

- (QuizViewController *)viewControllerAtIndex:(NSUInteger)index {
    
    QuizViewController *childViewController = [[QuizViewController alloc] initWithNibName:@"QuizViewController" bundle:nil];
    childViewController.index = index;
    
    return childViewController;
    
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // The number of items reflected in the page indicator.
    return 5;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // The selected item reflected in the page indicator.
    return 0;
}

@end
