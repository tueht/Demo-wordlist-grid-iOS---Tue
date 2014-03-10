//
//  WordListCollectionViewController.m
//  1000 Words
//
//  Created by Tue Hoang Trong on 3/10/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import "WordListCollectionViewController.h"
#import "QuizPageViewController.h"

@interface WordListCollectionViewController ()
{
    NSArray *wordLists;
}
@end

@implementation WordListCollectionViewController

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
    NSLog(@"xxxxxx");
    
    self.collectionView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
    
    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"grid_item_background_done.png"]];

    
    UILabel *wordListLabel = (UILabel*) [cell viewWithTag:100];
    wordListLabel.text = [NSString stringWithFormat:@"%d", indexPath.row + 1];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showQuizPage"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        QuizPageViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        destViewController.wordList = [NSString stringWithFormat:@"%d", indexPath.row + 1];;
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
}

@end
