#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    #define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSLog (@"Hello from Objective-C!");
    NSLog (@"Goodbye from Objective-C!");
    [pool drain];

    return 0;
}
