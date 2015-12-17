//
//  ViewController.m
//  Browser
//
//  Created by David Thurman on 12/17/15.
//  Copyright © 2015 David Thurman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchBarSearchButtonClicked: (UISearchBar * )searchBar {
    [self.Webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.SearchBar.text]]]];
    [self.Webview addSubview:self.Indicator];
    [self.SearchBar resignFirstResponder];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    
}

-(void) loading {
    if (!self.Webview.loading) {
        [self.Indicator stopAnimating];
    }else{
        [self.Indicator startAnimating];
    }
}
-(void)searchBarCancelButtonClicked: (UISearchBar * )searchBar {
    self.SearchBar.text = nil;
    [self.SearchBar resignFirstResponder];
    
}

@end
