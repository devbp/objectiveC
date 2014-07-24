#import <Foundation/Foundation.h>

//Declaration  of class and the methods
@interface SampleClass:NSObject
-(void)sampleMethod;
-(int)max:(int)num1 anotherparameter:(int) num2 lastparameter:(int) num3 ;

-(void)Getseconds:(int *)par;
@end


//Definition of the functions inside the class
@implementation SampleClass
-(void)sampleMethod{
NSLog(@"Hello World from objective c style function");
}


-(int)max:(int) n1 anotherparameter:(int) n2 lastparameter:(int) n3{
int returnvalue;
if(n1>n2&&n1>n3)
return n1;
else if(n2>n1&&n2>n3)
return n2;
else if(n3>n1&&n3>n2)
return n3;
//NSLog(@"Hello World from objective c style function%d",n1);
//return returnvalue;
}

-(void)GetSeconds:(int *)par
{
*par=time(NULL);
}
@end


void sayhello(int h)
{
NSLog (@"hello world from c style functions%d",h);
}



int main (int argc, const char * argv[])
{
   
//NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
//
int seconds;
SampleClass *myobject=[[SampleClass alloc]init];


[myobject sampleMethod];

int returnvalue=[myobject max:10 anotherparameter:30 lastparameter:6];

[myobject GetSeconds:&seconds];

NSLog(@"number of seconds %d",seconds);
NSLog (@"maxvalue %d",returnvalue);

sayhello(5);
   //[pool drain];
   return 0;
}
