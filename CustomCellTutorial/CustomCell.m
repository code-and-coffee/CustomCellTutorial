
//
//  CustomCell.m
//  CustomCellTutorial
//
//  Created by Nick on 7/26/12.
//  Copyright (c) 2012 MyCompanyName. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

@synthesize buttonView1 = _buttonView1;
@synthesize buttonView2 = _buttonView2;
@synthesize buttonView3 = _buttonView3;

-(UIButton *)buttonView1
{
    if (!_buttonView1)
        _buttonView1 = [UIButton buttonWithType:UIButtonTypeCustom];
    return _buttonView1;
}

-(UIButton *)buttonView2    
{
    if (!_buttonView2)
        _buttonView2 = [UIButton buttonWithType:UIButtonTypeCustom];
    return _buttonView2;
}

-(UIButton *)buttonView3
{
    if (!_buttonView3)
        _buttonView3 = [UIButton buttonWithType:UIButtonTypeCustom];
    return _buttonView3;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    //set space from the borders 
    float inset = 5.0;
    
    //how much space do we have to work with?
    CGRect bounds = [[self contentView] bounds];
    
    //get height and width of the bounds
    CGFloat h = bounds.size.height;
    CGFloat w = bounds.size.width;
    
    //calculate where the buttons should be centered
    CGFloat centerHeight = h/2;
    CGFloat centerWidth = (w/3)/2;
    
    //add buttons as subviews
    [[self contentView] addSubview:self.buttonView1];
    [[self contentView] addSubview:self.buttonView2];
    [[self contentView] addSubview:self.buttonView3];
    
    //set frame and center for the first button
    CGRect imageFrame = CGRectMake(inset, inset, 240.0, 180.0);
    [self.buttonView1 setFrame:imageFrame];
    CGPoint centerPoint = CGPointMake(centerWidth, centerHeight);
    [self.buttonView1 setCenter:centerPoint];
    
    //set frame and center for the second button
    imageFrame = CGRectMake(250.0, inset, 240.0, 180.0);
    [self.buttonView2 setFrame:imageFrame];
    centerPoint = CGPointMake(centerWidth + w/3, centerHeight);
    [self.buttonView2 setCenter:centerPoint];
    
    //set frame and center for the third button
    imageFrame = CGRectMake(495.0, inset, 240.0, 180.0);
    [self.buttonView3 setFrame:imageFrame];
    centerPoint = CGPointMake(centerWidth + 2*(w/3), centerHeight);
    [self.buttonView3 setCenter:centerPoint];    
}


@end
