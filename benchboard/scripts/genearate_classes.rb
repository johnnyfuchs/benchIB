
def vc_h ( suffix )
  return '#import <UIKit/UIKit.h>
@interface ViewController' + suffix + ' : UIViewController
@end'
end

def vc_m( suffix )
  return '#import "ViewController' + suffix + '.h"
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
@end'
end

def write_vcs( suffix )
  File.write('ViewController' + suffix + '.h', vc_h( suffix ) )
  File.write('ViewController' + suffix + '.m', vc_m( suffix ) )
end

'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').each { |letter|
  write_vcs( letter )
}
