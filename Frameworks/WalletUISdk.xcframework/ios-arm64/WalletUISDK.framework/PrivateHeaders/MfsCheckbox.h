//
//  MfsCheckbox.h
//  MfsIOSLibrary
//
//  Created by fatih.ergul on 14/03/2017.
//  Copyright © 2017 Phaymobile. All rights reserved.
//

#if defined(PR_GCN) || defined(DP_GCN) || defined(CR_GCN)

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MfsCheckbox : UIControl

@property (nonatomic) BOOL checked;
@property (nonatomic, strong) UIColor *checkboxColor;
@property (nonatomic) float checkboxSideLength;
@property (nonatomic, strong) UILabel *textLabel;

- (void)setColor:(UIColor *)color forControlState:(UIControlState)state;

- (void)setBackgroundColor:(UIColor *)backgroundColor forControlState:(UIControlState)state;

@end

#endif
