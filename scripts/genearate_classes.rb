
def vc_h ( suffix, next_suffix )
  return '#import <UIKit/UIKit.h>
@interface ViewController' + suffix + ' : UIViewController
@end'
end

def vc_m( suffix , next_suffix )
  file = '#import "ViewController' + suffix + '.h"
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
'
  if next_suffix
    file += '
-(void)viewDidAppear:(BOOL)animated {
    [self performSegueWithIdentifier:@"a" sender:self];
}'
  end 
  file += '@end'
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
        self.a = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
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
}'
  if next_suffix
    file += '
- (void) viewDidAppear:(BOOL)animated {
    ViewControllerPlainA *vc = [[ViewControllerPlainA alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}'
  end 
  file += '@end'
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
  write_vcs( letter, next_suffix )
  write_plain_vcs( letter, next_suffix )
}
