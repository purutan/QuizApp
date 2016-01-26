//
//  ViewController.h
//  QuizApp
//
//  Created by 藤田 優介 on 2016/01/24.
//  Copyright © 2016年 YusukeF Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *textAnswer;
@property (weak, nonatomic) IBOutlet UILabel *textResult;

- (IBAction)corectAnswer:(id)sender;
- (IBAction)wrongAnswer:(id)sender;


@end

