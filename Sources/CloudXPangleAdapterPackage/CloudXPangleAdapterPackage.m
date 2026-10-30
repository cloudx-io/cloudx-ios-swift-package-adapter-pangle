#import <CloudXPangleAdapter/CloudXPangleAdapter.h>

@interface CloudXPangleAdapterPackageLoader : NSObject
@end

@implementation CloudXPangleAdapterPackageLoader

+ (void)load {
    CloudXPangleAdapterRegister();
}

@end
