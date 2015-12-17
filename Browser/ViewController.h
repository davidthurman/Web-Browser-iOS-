//
//  ViewController.h
//  Browser
//
//  Created by David Thurman on 12/17/15.
//  Copyright © 2015 David Thurman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    
}
@property (strong, nonatomic) IBOutlet UISearchBar *SearchBar;
@property (strong, nonatomic) IBOutlet UIWebView *Webview;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *Indicator;


@end

