#import "ViewControllerW.h"
#import "Shared.h"
@interface ViewControllerW ()
@property (weak, nonatomic) IBOutlet UIImageView *a;
@property (weak, nonatomic) IBOutlet UIImageView *b;
@property (weak, nonatomic) IBOutlet UIImageView *c;
@property (weak, nonatomic) IBOutlet UIImageView *d;
@property (weak, nonatomic) IBOutlet UIImageView *e;
@property (weak, nonatomic) IBOutlet UIImageView *f;
@property (weak, nonatomic) IBOutlet UIImageView *g;
@property (weak, nonatomic) IBOutlet UIImageView *h;
@property (weak, nonatomic) IBOutlet UIImageView *i;
@property (weak, nonatomic) IBOutlet UIImageView *j;
@property (weak, nonatomic) IBOutlet UIImageView *k;
@property (weak, nonatomic) IBOutlet UIImageView *l;
@end
@implementation ViewControllerW
-(void)viewDidLoad{
    [Shared log:@"W loaded"];
    self.title = @"W";
}

-(void)viewDidAppear:(BOOL)animated {
    [self performSegueWithIdentifier:@"a" sender:self];
}
@end