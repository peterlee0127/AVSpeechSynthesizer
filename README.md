AVSpeechSynthesizer
====================

Speak any Language in your iOS Device , required iOS 7 



<code>
//#import <AVFoundation/AVFoundation.h>		
 AVSpeechSynthesizer *syn=[[AVSpeechSynthesizer alloc] init];		
AVSpeechUtterance *utt=[AVSpeechUtterance speechUtteranceWithString:@"Say Hello"];	
[utt setRate:0.15];		
[syn speakUtterance:utt];
</code>