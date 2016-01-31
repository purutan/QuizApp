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
NSInteger lastQuizNo;
NSInteger explainFlag;
BOOL answerFlag;

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setParts];
    quizNo = 1 ;
    lastQuizNo = 6; // 最終問題　+ 1をセット
    explainFlag = 1;
    
    
    [self quiz];
    
    //textView.hidden = YES;
    // 一時的に隠す　Noが代入されるまで隠れている
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setParts{
    _resetButton.hidden = YES;
    if (explainFlag == 1) {
        _explainText.text = @"○か×を回答してください。";
    }
  }


- (void)quiz{
    switch (quizNo) {
        // answerFlag = 1 ○が正解
        // answerFlag = 0 ×が正解
            
        case 1:
             quizText = @"問１\n最近話題の駄菓子がテーマの漫画・アニメ作品と言えば『だがしかし』である。";
            _textView.text = quizText;
            answerFlag = 1;
            
            
         //   [self.view addSubview:_textView];
            break;
        
        case 2:
            quizText = @"問2\n機会費用とは事業や行為に投下した資金・労力のうち、事業や行為の撤退・縮小・中止によっても戻ってこない投下資金または労力を言う。";
            _textView.text = quizText;
            
            answerFlag = 0;
            
            
         //   [self.view addSubview:_textView];
            break;
            
        case 3:
            quizText = @"問3\nサッカーにて一人の選手が３得点あげるとハットトリックと呼ばれるが、ダーツではブルに３本とも命中した場合にハットトリックと呼ばれる。";
            _textView.text = quizText;
            
            answerFlag = 1;
            
         //   [self.view addSubview:_textView];
            break;
            
        case 4:
            quizText = @"問4\n 生きている間は有名な人で会っても広辞苑に載ることがない。";
            _textView.text = quizText;
            
            answerFlag = 1;
            
        //    [self.view addSubview:_textView];
            break;
            
        case 5:
            quizText = @"問5\n技術的特異点（シンギュラリティ）とは、テクノロジーが急速に変化し、それにより甚大な影響がもたらされ、人間の生活が後戻りできないほどに変容してしまうような、来るべき未来のことである。";
            _textView.text = quizText;
            
            answerFlag = 1;
            
        //    [self.view addSubview:_textView];
            break;
            
        default:
            break;
    }
    
}


- (void)answer2:(id)sender {
    if (quizAnswer == answerFlag) {
        _textAnswer.text = [NSString stringWithFormat:@"問%01ldは正解です。",(long)quizNo];
        quizResult ++;
        [self showQuiz];
    } else {
        _textAnswer.text = [NSString stringWithFormat:@"問%01ldは不正解です。",(long)quizNo];
        [self showQuiz];
    }
    
    if (quizNo == lastQuizNo) {
        [self result];
    }
    
}

/*

- (void)answer{
    switch (quizNo) {
        case 1:
            if (quizAnswer == answerFlag) {
                _textAnswer.text = [NSString stringWithFormat:@"問%01ldは正解です。",(long)quizNo];
                quizResult ++;
                [self showQuiz];
            } else
               // *if (quizAnswer == 0) */ /*
            {
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

*/

- (void)showQuiz{
 //   [self.view addSubview:_textAnswer];
    quizNo++;
    [self quiz];

}


- (void)result{
    NSLog(@"%ld",quizResult);
    //[self.view addSubview:_textAnswer];
    _textResult.text = [NSString stringWithFormat:@"正解率は%.0f％です",(double)(quizResult/5.0f)*100];
   // [self.view addSubview:_textResult];
   //　 ↑コードで書いたインスタンスなどを表示する時に使う
    // ストーリーボードでは　addsubview する必要はない
    quizNo = 1;
    quizResult = 0;
    
    //ボタンを隠す
    _batuButton.hidden = YES;
    _maruButton.hidden = YES;
    _resetButton.hidden = NO;
    //文言の編集
    _explainText.text = @"リセットボタンを押下してください";
}

- (IBAction)corectAnswer:(id)sender {
    //NSLog(@"○が押された");
    quizAnswer = 1;
    //_textView.hidden = NO;
    [self answer2:sender];
}

- (IBAction)wrongAnswer:(id)sender {
    //NSLog(@"×が押された");
    quizAnswer = 0;
    [self answer2:sender];
}

- (IBAction)resetButton:(id)sender {
    quizNo = 0;
    quizResult = 0;
    _batuButton.hidden = NO;
    _maruButton.hidden = NO;
    _explainText.text = @"";
    _textAnswer.text = @"答え";
    _textResult.text = @"結果";
    [self showQuiz];
    
}
@end
