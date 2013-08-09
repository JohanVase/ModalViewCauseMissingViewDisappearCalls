//
//  ViewController2.m
//  Sandbox
//
//  Created by Johan Rugager Vase on 30/7/13.
//
//

#import "ViewController2.h"

int resource;

@interface ViewController2 ()

@end

@implementation ViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    resource++;
    NSLog(@"%s. Fetched resource: %i",__PRETTY_FUNCTION__, resource);
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void) viewWillDisappear:(BOOL)animated {
    resource--;
    [super viewWillDisappear:animated];
    NSLog(@"%s. Released resource: %i",__PRETTY_FUNCTION__, resource);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
