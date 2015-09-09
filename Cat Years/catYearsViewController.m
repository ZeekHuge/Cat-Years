//
//  catYearsViewController.m
//  Cat Years
//
//  Created by Mac-Mini Mtn on 9/9/15.
//  Copyright (c) 2015 zeekhuge. All rights reserved.
//

#import "catYearsViewController.h"

@interface catYearsViewController ()

@end

@implementation catYearsViewController



- (void)animationDoer0: (NSTimer *) timer0{
    printf("At animationDoer0:\n");
    catImageView.image = [UIImage imageNamed:@"cat1.jpeg"];
    catLabel.text = @"Hello !! and Welcome to Cat Years.";
    [NSTimer scheduledTimerWithTimeInterval:3.0
                                     target:self
                                   selector:@selector(animationDoer1:)
                                   userInfo:nil
                                    repeats:NO];
}

- (void)animationDoer1: (NSTimer *) timer1{
    printf("At animationDoer1:\n");
    catLabel.text = @"The app will help you determine age of your cat.";
    [NSTimer scheduledTimerWithTimeInterval:3.0
                                     target:self
                                   selector:@selector(animationDoer2:)
                                   userInfo:nil
                                    repeats:NO];
}

- (void)animationDoer2: (NSTimer *) timer2{
    printf("At animationDoer2:\n");
    catLabel.text = @"What you need to do is, just type in the age of the cat in human years and tap the button.";
    [NSTimer scheduledTimerWithTimeInterval:5.0
                                     target:self
                                   selector:@selector(animationDoer3:)
                                   userInfo:nil
                                    repeats:NO];

    }

- (void)animationDoer3: (NSTimer *) timer3{
    printf("At animationDoer3:\n");
    catImageView.image = [UIImage imageNamed:@"cat3.jpeg"];
    catLabel.text = @"I am feeling sleepy now. You carry on...";
    [NSTimer scheduledTimerWithTimeInterval:4.0
                                     target:self
                                   selector:@selector(animationDoer4:)
                                   userInfo:nil
                                    repeats:NO];
}

- (void)animationDoer4: (NSTimer *) timer4{
    printf("At animationDoer4:\n");
    catLabel.hidden = TRUE;
    catImageView.hidden = TRUE ;
    findCatAgeButton.hidden = FALSE;
    catAgeTextField.hidden = FALSE;
    catAgeTextField.text = @"";
    
}


- (void)animationDoer5: (NSTimer *) timer5{
    printf("At animationDoer5:\n");
    catImageView.image = [UIImage imageNamed:@"cat3.jpeg"];
    catLabel.text = @"I am going to sleep again. You carry on...";
        [NSTimer scheduledTimerWithTimeInterval:3.0
                                     target:self
                                   selector:@selector(animationDoer4:)
                                   userInfo:nil
                                    repeats:NO];
}


- (IBAction)findCatAgeCalculator:(id)sender {
    
    printf("ButtonPressed\n");
    
    [catAgeTextField resignFirstResponder];
    
    int enteredAge = catAgeTextField.text.intValue ;
    int catYears ;
    
    printf("entered age %d\n",enteredAge);
    
    if (enteredAge > 0){
        catYears = enteredAge * 7;
        catLabel.hidden = FALSE;
        catImageView.hidden = FALSE ;
        findCatAgeButton.hidden = TRUE;
        catAgeTextField.hidden = TRUE;
        catImageView.image = [UIImage imageNamed:@"cat1.jpeg"];
        catLabel.text =[NSString stringWithFormat:@"OK, I am awake. BTW your cat's age is %d years.",catYears];
        
        [NSTimer scheduledTimerWithTimeInterval:4.0
                                         target:self
                                       selector:@selector(animationDoer5:)
                                       userInfo:nil
                                        repeats:NO];
    }
    else{
        catLabel.hidden = FALSE;
        catImageView.hidden = FALSE ;
        findCatAgeButton.hidden = TRUE;
        catAgeTextField.hidden = TRUE;
        
        catLabel.text = @"0 can't be an age, I a feeling really sleepy so please don't do that again.";
        
        [NSTimer scheduledTimerWithTimeInterval:4.0
                                         target:self
                                       selector:@selector(animationDoer4:)
                                       userInfo:nil
                                        repeats:NO];
        
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    findCatAgeButton.hidden = TRUE;
    catAgeTextField.hidden = TRUE;
    
    
    
    [NSTimer scheduledTimerWithTimeInterval:0.2
                                     target:self
                                   selector:@selector(animationDoer0:)
                                   userInfo:nil
                                    repeats:NO];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
