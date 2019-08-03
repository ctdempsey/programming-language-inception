#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    printf("Hello from Objective-C!\n");
    fflush(stdout);
    NSString *path = @"ruby";
    NSArray *args = [NSArray arrayWithObjects:@"ruby.rb", nil];
    [[NSTask launchedTaskWithLaunchPath:path arguments:args] waitUntilExit];
    printf("Goodbye from Objective-C!\n");
    fflush(stdout);
    [pool drain];

    return 0;
}
