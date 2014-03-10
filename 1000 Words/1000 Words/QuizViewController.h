//
//  QuizViewController.h
//  1000 Words
//
//  Created by Tue Hoang Trong on 3/10/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

@property (strong, nonatomic) NSString *wordList;
@property (assign, nonatomic) NSInteger index;
@property (weak, nonatomic) IBOutlet UILabel *screenNumber;

@end
