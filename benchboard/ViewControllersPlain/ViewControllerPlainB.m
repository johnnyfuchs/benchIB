#import "ViewControllerPlainB.h"
#import "ViewControllerPlainC.h"
#import "Shared.h"
@interface ViewControllerPlainB ()
@property (strong, nonatomic) UIImageView *a;
@property (strong, nonatomic) UIImageView *b;
@property (strong, nonatomic) UIImageView *c;
@property (strong, nonatomic) UIImageView *d;
@property (strong, nonatomic) UIImageView *e;
@property (strong, nonatomic) UIImageView *f;
@property (strong, nonatomic) UIImageView *g;
@property (strong, nonatomic) UIImageView *h;
@property (strong, nonatomic) UIImageView *i;
@property (strong, nonatomic) UIImageView *j;
@property (strong, nonatomic) UIImageView *k;
@property (strong, nonatomic) UIImageView *l;
@end
@implementation ViewControllerPlainB
-(instancetype) init {
    if(self = [super init]){
        self.view.backgroundColor = [UIColor whiteColor];
        self.a = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        self.a.backgroundColor = [UIColor colorWithWhite:0.1 alpha:1];
        [self.view addSubview:self.a];
        self.b = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.b];
        self.c = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.c];
        self.d = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.d];
        self.e = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.e];
        self.f = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.f];
        self.g = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.g];
        self.h = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.h];
        self.i = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.i];
        self.j = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.j];
        self.k = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.k];
        self.l = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
        [self.view addSubview:self.l];
    }
    return self;
}
-(void)viewDidLoad{
    [Shared log:@"B loaded"];
    self.title = @"B";
}


- (void) viewDidAppear:(BOOL)animated {
    ViewControllerPlainC *vc = [[ViewControllerPlainC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end