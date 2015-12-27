//
//  RichTextView.m
//  CoreText
//
//  Created by Johannes on 15/12/27.
//  Copyright © 2015年 何江浩. All rights reserved.
//

#import "RichTextView.h"
#import <CoreText/CoreText.h>

@implementation RichTextView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, self.bounds);
    
    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc] initWithString:@"Hello World!"];
    
    [attString setAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],kCTForegroundColorAttributeName, nil] range:NSMakeRange(0, 6)];
    CTFramesetterRef frameSetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
    CTFrameRef ctframe = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, attString.length - 1), path, NULL);
    
    CTFrameDraw(ctframe, context);
    CFRelease(frameSetter);
    CFRelease(path);
    CFRelease(ctframe);
    
}

@end
