//
//  ViewController1.m
//  one_navagation
//
//  Created by mac  on 16/9/6.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"
#import "ZLPhotoPickerCollectionView.h"
#import "ClickAndSelectPhoto.h"
#import "ZLPhoto.h"


@interface ViewController1 ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate>


@property(nonatomic,strong)UIButton *btn;

@property (nonatomic,strong)ClickAndSelectPhoto *photos;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.btn];
    self.view.backgroundColor = [UIColor redColor];
    [self.btn addTarget:self action:@selector(clickbtn) forControlEvents:UIControlEventTouchUpInside];
}



- (void)clickbtn
{
    [self.navigationController pushViewController:[[ViewController2 alloc]init] animated:YES];
}




-(UIButton *)btn
{
    if (_btn == nil) {
        _btn = [UIButton cornerButton:4.0f
                                 font:15.0f
                              bgColor:[UIColor redColor]
                           boderColor:[UIColor blueColor]
                           boderWight:1.0f
                                title:@"hehe"];
        _btn.frame = CGRectMake(100, 100, 100, 100);
        
    }
    return _btn;
}



@end
