//
//  HeaderView.m
//  3DPrintMeApp
//
//  Created by Lakshit Kumar [el15lk] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "HeaderView.h"
#define FontHeaderTitle [UIFont fontWithName:@"HelveticaNeue-Bold" size:24]
#define FontHeaderSubtitle [UIFont fontWithName:@"HelveticaNeue-Light" size:14]

// Numerics
CGFloat const HeaderViewPadding = 10.0f;
CGFloat const HeaderViewSeparatorHeight = 0.5f;

// Colors
static UIColor *HeaderViewDefaultSeparatorColor = nil;

@interface HeaderView ()

@property (nonatomic, strong) UIView *separatorView;

@end

@implementation HeaderView

#pragma mark - Alloc/Init

+ (void)initialize
{
    if (self == [HeaderView class])
    {
        HeaderViewDefaultSeparatorColor = [UIColor whiteColor];
    }
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
        
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.numberOfLines = 1;
        _titleLabel.adjustsFontSizeToFitWidth = YES;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = FontHeaderTitle;
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.shadowColor = [UIColor blackColor];
        _titleLabel.shadowOffset = CGSizeMake(0, 1);
        _titleLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:_titleLabel];
        
        _subtitleLabel = [[UILabel alloc] init];
        _subtitleLabel.numberOfLines = 1;
        _subtitleLabel.adjustsFontSizeToFitWidth = YES;
        _subtitleLabel.font = FontHeaderSubtitle;
        _subtitleLabel.textAlignment = NSTextAlignmentCenter;
        _subtitleLabel.textColor = [UIColor whiteColor];
        _subtitleLabel.shadowColor = [UIColor blackColor];
        _subtitleLabel.shadowOffset = CGSizeMake(0, 1);
        _subtitleLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:_subtitleLabel];
        
        _separatorView = [[UIView alloc] init];
        _separatorView.backgroundColor = HeaderViewDefaultSeparatorColor;
        [self addSubview:_separatorView];
    }
    return self;
}

#pragma mark - Setters

- (void)setSeparatorColor:(UIColor *)separatorColor
{
    _separatorColor = separatorColor;
    self.separatorView.backgroundColor = _separatorColor;
    [self setNeedsLayout];
}

#pragma mark - Layout

- (void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat titleHeight = ceil(self.bounds.size.height * 0.5);
    CGFloat subTitleHeight = self.bounds.size.height - titleHeight - HeaderViewSeparatorHeight;
    CGFloat xOffset = HeaderViewPadding;
    CGFloat yOffset = 0;
    
    self.titleLabel.frame = CGRectMake(xOffset, yOffset, self.bounds.size.width - (xOffset * 2), titleHeight);
    yOffset += self.titleLabel.frame.size.height;
    self.separatorView.frame = CGRectMake(xOffset * 2, yOffset, self.bounds.size.width - (xOffset * 4), HeaderViewSeparatorHeight);
    yOffset += self.separatorView.frame.size.height;
    self.subtitleLabel.frame = CGRectMake(xOffset, yOffset, self.bounds.size.width - (xOffset * 2), subTitleHeight);
}



@end
