//
//  ViewController.m
//  QuizApp
//
//  Created by 藤田 優介 on 2016/01/24.
//  Copyright © 2016年 YusukeF Inc. All rights reserved.
//

#import "ViewController.h"

NSInteger quizNo;
NSString *quizText;
NSInteger quizAnswer;
NSInteger quizResult;

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setParts];
    quizNo = 1 ;
    [self quiz];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setParts{
    
}


- (void)quiz{
    switch (quizNo) {
        case 1:
             quizText = @"問１\n最近話題の駄菓子がテーマの漫画・アニメ作品と言えば『だがしかし』である。";
            _textView.text = quizText;
            [self.view addSubview:_textView];
            break;
        
        case 2:
            quizText = @"問2\n機会費用（）とは事業や行為に投下した資金・労力のうち、事業や行為の撤退・縮小・中止によっても戻ってこない投下資金または労力を言う。";
            _textView.text = quizText;
            [self.view addSubview:_textView];
            break;
            
        case 3:
            quizText = @"問3\nサッカーにて一人の選手が３得点あげるとハットトリックと呼ばれるが、ダーツではブルに３本とも命中した場合にハットトリックと呼ばれる。";
            _textView.text = quizText;
            [self.view addSubview:_textView];
            break;
            
        case 4:
            quizText = @"問4\n『敷居が高い』は高級すぎたり、上品すぎて入りにくいという意味である。";
            _textView.text = quizText;
            [self.view addSubview:_textView];
            break;
            
        case 5:
            quizText = @"問5\n技術的特異点（シンギュラリティ）とは、テクノロジーが急速に変化し、それにより甚大な影響がもたらされ、人間の生活が後戻りできないほどに変容してしまうような、来るべき未来のことである。";
            _textView.text = quizText;
            [self.view addSubview:_textView];
            break;
            
        default:
            break;
    }
    
}


- (void)answer{
    switch (quizNo) {
        case 1:
            if (quizAnswer == 1) {
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは正解です。",(long)quizNo];
                quizResult ++;
                [self showQuiz];
            } else if (quizAnswer == 0){
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは不正解です。",(long)quizNo];
                [self showQuiz];
            }
            break;
        
        case 2:
            if (quizAnswer == 1) {
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは不正解です。",(long)quizNo];
                [self showQuiz];
            } else if (quizAnswer == 0){
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは正解です。",(long)quizNo];
                quizResult ++;
                [self showQuiz];
            }
            break;
            
        case 3:
            if (quizAnswer == 1) {
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは正解です。",(long)quizNo];
                quizResult ++;
                [self showQuiz];
            } else if (quizAnswer == 0){
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは不正解です。",(long)quizNo];
                [self showQuiz];
            }
            break;
            
        case 4:
            if (quizAnswer == 1) {
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは不正解です。",(long)quizNo];
                [self showQuiz];
            } else if (quizAnswer == 0){
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは正解です。",(long)quizNo];
                quizResult ++;
                [self showQuiz];
            }
            break;
            
        case 5:
            if (quizAnswer == 1) {
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは正解です。",(long)quizNo];
                quizResult ++;
                [self result];
            } else if (quizAnswer == 0){
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは不正解です。",(long)quizNo];
                [self result];
            }
            break;
            
        default:
            break;
    }
    
}

- (void)showQuiz{
    [self.view addSubview:_textAnswer];
    quizNo++;
    [self quiz];

}


- (void)result{
    NSLog(@"%ld",quizResult);
    [self.view addSubview:_textAnswer];
    _textResult.text = [NSString stringWithFormat:@"正解率は%.0f％です",(double)(quizResult/5.0f)*100];
    [self.view addSubview:_textResult];
    quizNo = 1;
    quizResult = 0;
    
}

- (IBAction)corectAnswer:(id)sender {
    //NSLog(@"○が押された");
    quizAnswer = 1;
    [self answer];
}

- (IBAction)wrongAnswer:(id)sender {
    //NSLog(@"×が押された");
    quizAnswer = 0;
    [self answer];
}
@end
