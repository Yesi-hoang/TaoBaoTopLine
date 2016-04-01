# TaoBaoTopLine
仿淘宝头条
效果图
![image](https://github.com/Yesi-hoang/TaoBaoTopLine/tree/master/Gif) 
## 如何使用
1. 创建数据
```
    - (void)createData{
    for (int i = 0; i < 10; i++) {
        NSString *title = [NSString stringWithFormat:@"title %d",i];
        NSString *url;
        
        if (i % 2 == 0) {
           url = @"http://www.jianshu.com/p/a0d0c865bc7f";
        }else{
           url = @"http://v.ent.163.com/video/2015/10/O/D/VB4L2GPOD.html";
        }
        DataModel *model = [DataModel dataModelWithTitle:title url:url];
        
        [self.datas addObject:model];
    }
    }
```
2. 创建View并添加成控制器的子view
```

   - (void)createToplineView{ 
    CGFloat width = 300;
    CGFloat height = 50;
    CGFloat x = ([UIScreen mainScreen].bounds.size.width - width) / 2;
    CGFloat y = ([UIScreen mainScreen].bounds.size.height - height) / 2;

    GBTopLineView *view = [[GBTopLineView alloc] initWithFrame:CGRectMake(x , y, width, height)];
    view.dataArr = self.datas;
    view.backgroundColor =[UIColor yellowColor];
    [self.view addSubview:view];
    }
```
## 数据模型

```
@interface DataModel : NSObject
/** title */
@property (nonatomic, strong) NSString *title;
/** url */
@property (nonatomic, strong) NSString *link_url;

+ (instancetype)dataModelWithTitle:(NSString *)title url:(NSString *)url;
```

## 效果图
comming soon

## 实现思路
上下2个View不停做动画
