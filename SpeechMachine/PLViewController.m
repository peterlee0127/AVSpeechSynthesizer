//
//  PLViewController.m
//  SpeechMachine
//
//  Created by PeterLee on 10/7/13.
//  Copyright (c) 2013 PeterLee. All rights reserved.
//

#import "PLViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface PLViewController ()

@end

@implementation PLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction) speek:(id)sender
{
    if(![self.textView.text isEqualToString:@""])
    {
    AVSpeechSynthesizer *syn=[[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance *utt=[AVSpeechUtterance speechUtteranceWithString:self.textView.text];
        [utt setRate:0.15];
    [syn speakUtterance:utt];
    }
}
-(IBAction) closeKeyboard:(id)sender
{
    [self.textView resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
