
def vc_h ( suffix, next_suffix )
  return '#import <UIKit/UIKit.h>
@interface ViewController' + suffix + ' : UIViewController
@end'
end

def vc_m( suffix , next_suffix )
  file = '#import "ViewController' + suffix + '.h"
#import "Shared.h"
@interface ViewController' + suffix + ' ()
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
@implementation ViewController' + suffix + '
-(void)viewDidLoad{
    [Shared log:@"'+suffix+' loaded"];
    self.title = @"'+suffix+'";
}
'
  if next_suffix
    file += '
-(void)viewDidAppear:(BOOL)animated {
    [self performSegueWithIdentifier:@"a" sender:self];
}'
  end 
  file += '
@end'
  return file
end

def write_vcs( suffix, next_suffix )
  File.write('benchboard/ViewControllers/ViewController' + suffix + '.h', vc_h( suffix, next_suffix ) )
  File.write('benchboard/ViewControllers/ViewController' + suffix + '.m', vc_m( suffix, next_suffix ) )
end

def vc_plain_h ( suffix, next_suffix )
  return '#import <UIKit/UIKit.h>
@interface ViewControllerPlain' + suffix + ' : UIViewController
@end'
end

def vc_plain_m( suffix, next_suffix )
  file = '#import "ViewControllerPlain' + suffix + '.h"
#import "ViewControllerPlain' + next_suffix + '.h"
#import "Shared.h"
@interface ViewControllerPlain' + suffix + ' ()
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
@implementation ViewControllerPlain' + suffix + '
-(instancetype) init {
    if(self = [super init]){
        self.view.backgroundColor = [UIColor whiteColor];
        self.a = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        self.a.backgroundColor = [UIColor colorWithWhite:0.15 alpha:1];
        [self.view addSubview:self.a];
        self.b = [[UIImageView alloc] initWithFrame:CGRectMake(10, 60, 50, 50)];
        self.b.backgroundColor = [UIColor colorWithWhite:0.2 alpha:1];
        [self.view addSubview:self.b];
        self.c = [[UIImageView alloc] initWithFrame:CGRectMake(10, 120, 50, 50)];
        self.c.backgroundColor = [UIColor colorWithWhite:0.25 alpha:1];
        [self.view addSubview:self.c];
        self.d = [[UIImageView alloc] initWithFrame:CGRectMake(60, 10, 50, 50)];
        self.d.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
        [self.view addSubview:self.d];
        self.e = [[UIImageView alloc] initWithFrame:CGRectMake(60, 60, 50, 50)];
        self.e.backgroundColor = [UIColor colorWithWhite:0.35 alpha:1];
        [self.view addSubview:self.e];
        self.f = [[UIImageView alloc] initWithFrame:CGRectMake(60, 120, 50, 50)];
        self.f.backgroundColor = [UIColor colorWithWhite:0.4 alpha:1];
        [self.view addSubview:self.f];
        self.g = [[UIImageView alloc] initWithFrame:CGRectMake(120, 10, 50, 50)];
        self.g.backgroundColor = [UIColor colorWithWhite:0.45 alpha:1];
        [self.view addSubview:self.g];
        self.h = [[UIImageView alloc] initWithFrame:CGRectMake(120, 60, 50, 50)];
        self.h.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1];
        [self.view addSubview:self.h];
        self.i = [[UIImageView alloc] initWithFrame:CGRectMake(120, 120, 50, 50)];
        self.i.backgroundColor = [UIColor colorWithWhite:0.55 alpha:1];
        [self.view addSubview:self.i];
        self.j = [[UIImageView alloc] initWithFrame:CGRectMake(180, 10, 50, 50)];
        self.j.backgroundColor = [UIColor colorWithWhite:0.6 alpha:1];
        [self.view addSubview:self.j];
        self.k = [[UIImageView alloc] initWithFrame:CGRectMake(180, 60, 50, 50)];
        self.k.backgroundColor = [UIColor colorWithWhite:0.65 alpha:1];
        [self.view addSubview:self.k];
        self.l = [[UIImageView alloc] initWithFrame:CGRectMake(180, 120, 50, 50)];
        self.l.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1];
        [self.view addSubview:self.l];
    }
    return self;
}
-(void)viewDidLoad{
    [Shared log:@"'+suffix+' loaded"];
    self.title = @"'+suffix+'";
}

'
  if next_suffix
    file += '
- (void) viewDidAppear:(BOOL)animated {
    ViewControllerPlain' + next_suffix + ' *vc = [[ViewControllerPlain' + next_suffix + ' alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}'
  end 
  file += '
@end'
  return file
end

def write_plain_vcs( suffix, next_suffix )
  File.write('benchboard/ViewControllersPlain/ViewControllerPlain' + suffix + '.h', vc_plain_h( suffix, next_suffix ) )
  File.write('benchboard/ViewControllersPlain/ViewControllerPlain' + suffix + '.m', vc_plain_m( suffix, next_suffix ) )
end


letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZA'.split('')

(0..letters.length - 2).each { |idx|
  suffix = letters[idx]
  next_suffix = letters[idx + 1]
  write_vcs( suffix, next_suffix )
  write_plain_vcs( suffix, next_suffix )
}
