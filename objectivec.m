#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    #define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // NSLog (@"Hello from Objective-C!");
    // NSLog (@"Goodbye from Objective-C!");
    printf("Hello from Objective-C!\n");
    printf("Goodbye from Objective-C!\n");
    [pool drain];

    return 0;
}
