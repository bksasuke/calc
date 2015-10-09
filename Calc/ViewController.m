//
//  ViewController.m
//  Calc
//
//  Created by student on 10/8/15.
//  Copyright © 2015 Student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *display;
@property (weak, nonatomic) IBOutlet UITextField *display2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)button1:(id)sender {
    _display.text = [NSString stringWithFormat:@"%@1",_display.text];
}

- (IBAction)button2:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@2",_display.text];
}

- (IBAction)button3:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@3",_display.text];

}
- (IBAction)button4:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@4",_display.text];

}
- (IBAction)button5:(id)sender {
    _display.text = [NSString stringWithFormat:@"%@5",_display.text];
    
}
- (IBAction)button6:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@6",_display.text];

}
- (IBAction)button7:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@7",_display.text];

}
- (IBAction)button8:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@8",_display.text];

}
- (IBAction)button9:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@9",_display.text];

}
- (IBAction)button0:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@0",_display.text];

}
- (IBAction)button:(id)sender {
   _display.text = [NSString stringWithFormat:@"%@.",_display.text];
}


- (IBAction)plusbutton:(id)sender {
    operation = PLUS;
    storage =_display.text;
   _display.text = @"";
}
- (IBAction)minusbutton:(id)sender {
    operation = MINUS;
    storage =_display.text;
   _display.text = @"";

}
- (IBAction)mutiplybutton:(id)sender {
    operation = MUTIPLY;
    storage =_display.text;
   _display.text = @"";

}
- (IBAction)devidebutton:(id)sender {
    operation = DIVIDE;
    storage =_display.text;
   _display.text = @"";

}
- (IBAction)equalbutton:(id)sender {
    NSString *secondNumber =_display.text;
    switch (operation) {
        case PLUS:
           _display.text = [NSString stringWithFormat:@"%f", [storage doubleValue]+ [secondNumber doubleValue]];
            break;
        case MINUS:
           _display.text = [NSString stringWithFormat:@"%f", [storage doubleValue]- [secondNumber doubleValue]];
            break;
        case MUTIPLY:
           _display.text = [NSString stringWithFormat:@"%f", [storage doubleValue]* [secondNumber doubleValue]];
            break;
        case DIVIDE:
           _display.text = [NSString stringWithFormat:@"%f", [storage doubleValue]/ [secondNumber doubleValue]];
            break;

    }
}
- (IBAction)clearbutton:(id)sender {
   _display.text = @"";
}





@end
