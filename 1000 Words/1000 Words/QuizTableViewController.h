//
//  QuizTableViewController.h
//  1000 Words
//
//  Created by Tue Hoang Trong on 3/12/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
- (IBAction)backPress:(id)sender;

//+(NSInteger)

@end
