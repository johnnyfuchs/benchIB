#import "ViewControllerPlainP.h"
#import "ViewControllerPlainQ.h"
#import "Shared.h"
@interface ViewControllerPlainP ()
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
@implementation ViewControllerPlainP
-(instancetype) init {
    if(self = [super init]){
        self.view.backgroundColor = [UIColor whiteColor];
        self.a = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        self.a.backgroundColor = [UIColor colorWithWhite:0.15 alpha:1];
        [self.view addSubview:self.a];
        self.b = [[UIImageView alloc] initWithFrame:CGRectMake(10, 70, 50, 50)];
        self.b.backgroundColor = [UIColor colorWithWhite:0.2 alpha:1];
        [self.view addSubview:self.b];
        self.c = [[UIImageView alloc] initWithFrame:CGRectMake(10, 130, 50, 50)];
        self.c.backgroundColor = [UIColor colorWithWhite:0.25 alpha:1];
        [self.view addSubview:self.c];
        self.d = [[UIImageView alloc] initWithFrame:CGRectMake(70, 10, 50, 50)];
        self.d.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
        [self.view addSubview:self.d];
        self.e = [[UIImageView alloc] initWithFrame:CGRectMake(70, 70, 50, 50)];
        self.e.backgroundColor = [UIColor colorWithWhite:0.35 alpha:1];
        [self.view addSubview:self.e];
        self.f = [[UIImageView alloc] initWithFrame:CGRectMake(70, 130, 50, 50)];
        self.f.backgroundColor = [UIColor colorWithWhite:0.4 alpha:1];
        [self.view addSubview:self.f];
        self.g = [[UIImageView alloc] initWithFrame:CGRectMake(130, 10, 50, 50)];
        self.g.backgroundColor = [UIColor colorWithWhite:0.45 alpha:1];
        [self.view addSubview:self.g];
        self.h = [[UIImageView alloc] initWithFrame:CGRectMake(130, 70, 50, 50)];
        self.h.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1];
        [self.view addSubview:self.h];
        self.i = [[UIImageView alloc] initWithFrame:CGRectMake(130, 130, 50, 50)];
        self.i.backgroundColor = [UIColor colorWithWhite:0.55 alpha:1];
        [self.view addSubview:self.i];
        self.j = [[UIImageView alloc] initWithFrame:CGRectMake(190, 10, 50, 50)];
        self.j.backgroundColor = [UIColor colorWithWhite:0.6 alpha:1];
        [self.view addSubview:self.j];
        self.k = [[UIImageView alloc] initWithFrame:CGRectMake(190, 70, 50, 50)];
        self.k.backgroundColor = [UIColor colorWithWhite:0.65 alpha:1];
        [self.view addSubview:self.k];
        self.l = [[UIImageView alloc] initWithFrame:CGRectMake(190, 130, 50, 50)];
        self.l.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1];
        [self.view addSubview:self.l];
    }
    return self;
}
-(void)viewDidLoad{
    [Shared log:@"P loaded"];
    self.title = @"P";
}


- (void) viewDidAppear:(BOOL)animated {
    ViewControllerPlainQ *vc = [[ViewControllerPlainQ alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end