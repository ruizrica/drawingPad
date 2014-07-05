//
//  StoryCardView.m
//  drawingPad
//
//  Created by Ricardo Ruiz on 7/1/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "StoryCardView.h"

@interface StoryCardView ()<AVSpeechSynthesizerDelegate> {
    NSString *storyText;
    NSString *storyText2;
    AVSpeechSynthesizer *synthesizer;
    AVSpeechUtterance *spokenWords;
}
- (IBAction)pause:(id)sender;
- (IBAction)start:(id)sender;
- (IBAction)readToMe:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *tv_storyCardText;
@end

@implementation StoryCardView
@synthesize tv_storyCardText;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"mainBackdrop.png"]];
    
    tv_storyCardText.textColor = [UIColor whiteColor];
    storyText = @"Barky and the Books\n\nPeople like books. Sally’s dog, Barky, likes them, too.  Sally reads in bed before she goes to sleep. Barky looks at the book with her. His face gets up close to it as if he is reading, too.  Barky is a small brown dog with a white face. He has dark brown rings around his eyes, as if he has glasses on. His face looks very wise.  Sally named him Barky because he barked a lot when he was small. But he learned fast.  First he learned not to bark";
    
    storyText2 =  @"so hard when people are trying to sleep.  Then he learned that people do not like to hear a dog-barking at all!  Barky had to learn about books. When he first came to live with Sally, he tore one all up. What a mess! It was hard work, too, so he fell fast asleep on top of all the bits of paper. Another time Barky took a ride on a book. That is another hard thing to do! This is what happened.  He was still a small puppy. The family went away, but Barky went to sleep under a chair, and they forgot him.  When he woke up, everyone was away. But Barky wanted to play.  A big chair was near a shelf with books on it. Barky got on the chair, and then on the shelf. His paw hit the books.  The books began to fall to the floor. Barky’s foot slipped. The next thing he knew, away he went on a fast ride to the floor on a book!  But now Barky knows about books. He does not tear them up, and he does not ride on them!";
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (IBAction)start:(id)sender {
    [synthesizer stopSpeakingAtBoundary:AVSpeechBoundaryWord];
    [synthesizer speakUtterance:spokenWords];
}

- (IBAction)readToMe:(id)sender {
    synthesizer = [[AVSpeechSynthesizer alloc]init];
    synthesizer.delegate = self;
    
    spokenWords = [AVSpeechUtterance speechUtteranceWithString:storyText];
    
    [spokenWords setRate:0.17f];
    [spokenWords setVolume:0.8f];
    [synthesizer speakUtterance:spokenWords];
}

- (IBAction)pause:(id)sender {
    [synthesizer pauseSpeakingAtBoundary:AVSpeechBoundaryWord];
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer willSpeakRangeOfSpeechString:(NSRange)characterRange utterance:(AVSpeechUtterance *)utterance {
    
    UIFont *font = [UIFont fontWithName:@"Chalkboard SE" size:28.0];

    NSDictionary *attrsDictionary = [NSDictionary dictionaryWithObject:font
                                                                forKey:NSFontAttributeName];
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc]initWithString:storyText attributes:attrsDictionary];
    [text addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:characterRange];
    //[text addAttribute:NSBackgroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(0, [text length])];
    
    tv_storyCardText.attributedText = text;
    
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance {
    
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc]init];
    [text removeAttribute:NSForegroundColorAttributeName range:NSMakeRange(0, [text length])];
    tv_storyCardText.attributedText = text;
}
@end




















