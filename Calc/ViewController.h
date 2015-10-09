//
//  ViewController.h
//  Calc
//
//  Created by student on 10/8/15.
//  Copyright © 2015 Student. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {PLUS, MINUS, MUTIPLY, DIVIDE} CalculatorOperation;

@interface ViewController : UIViewController
{
    NSString *storage;
    CalculatorOperation operation;

}
@end

