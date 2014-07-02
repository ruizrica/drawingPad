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
    AVSpeechSynthesizer *synthesizer;
    AVSpeechUtterance *spokenWords;
}
- (IBAction)pause:(id)sender;
- (IBAction)start:(id)sender;
- (IBAction)readToMe:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *tv_storyCardText;
@end

@implementation StoryCardView
@synthesize tv_storyCardText;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"mainBackdrop.png"]];
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
    
    [spokenWords setRate:0.2f];
    [spokenWords setVolume:0.8f];
    [synthesizer speakUtterance:spokenWords];
}

- (IBAction)pause:(id)sender {
    [synthesizer pauseSpeakingAtBoundary:AVSpeechBoundaryWord];
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer willSpeakRangeOfSpeechString:(NSRange)characterRange utterance:(AVSpeechUtterance *)utterance {
    
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc]initWithString:storyText];
    [text addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:characterRange];
    tv_storyCardText.attributedText = text;
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance {
    
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc]init];
    [text removeAttribute:NSForegroundColorAttributeName range:NSMakeRange(0, [text length])];
    tv_storyCardText.attributedText = text;
}
@end




















