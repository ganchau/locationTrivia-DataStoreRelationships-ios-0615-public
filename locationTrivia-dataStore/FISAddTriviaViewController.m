//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Gan Chau on 6/18/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"
#import "FISLocationsDataStore.h"

@interface FISAddTriviaViewController ()

@property (weak, nonatomic) IBOutlet UITextField *triviaTextField;

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonTapped:(id)sender
{
    FISTrivia *trivia = [[FISTrivia alloc] initWithContent:self.triviaTextField.text Likes:1];
    [self.trivia addObject:trivia];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cancelButtonTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
