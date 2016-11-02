---
# 说明
我是许+宣，博客：[xujiaxuan.github.io](http://xujiaxuan.github.io/)  
github 博客位置：(https://github.com/xujiaxuan/xujiaxuan.github.io)

博客始于：2016年10月27日

# 本博客的创建步骤

# 1.0 install in ubuntu
```
sudo apt-get install ruby2.3-dev
sudo apt-get install nodejs
sudo gem install jekyll
sudo gem install bundler 
```

# 2.0 create project
```
jekyll new myblog
edit _config.yml //参考config jekyll baseurl 指定为 /index.html
create index.html //内容为Hello World!
```
访问 [xujiaxuan.github.io][]

# 3.0 start in local
bundle exec jekyll serve
然后参照提示访问 Server address的值
changed css

# 4.0 hexo
## 4.1 install
apt-get install npm
npm install -g hexo

## 4.2 hexo init
hexo init
hexo generate
hexo server

## 4.3 deploy

change _config.yml
hexo deploy

```
hexo clean
hexo generate
hexo deploy // input username and password
```

ERROR Deployer not found: git 或者 ERROR Deployer not found: github
npm install hexo-deployer-git --save

## 4.4 new article
hexo new "my first article"

## 4.5 install Next themes
```
git clone https://github.com/iissnan/hexo-theme-next themes/next
/root/_config.yml配置项theme
#Extensions
#Plugins: http://hexo.io/plugins/
#Themes: http://hexo.io/themes/
theme: next
```
# 4.6 use duoshuo
http://duoshuo.com/ -> 登入 -> 创建站点
next->_config.yml
	shortname:xujiaxuan
	share:true

# 4.7 use leancloud
https://leancloud.cn
[leancloud] []

# 4.8 other
添加categories分类
scheme改为Pisces
keyword 改为x.m blog
更新language title author

# 其他参考
[githubpages][]

[Ubuntu14.04+Jekyll+Github Pages搭建静态博客][]

[config jekyll][]

[俊民的博客][]
[生活与代码博文][]

[使用Category分类][]
[HEXO+Github,搭建属于自己的博客][]

[xujiaxuan.github.io]: http://xujiaxuan.github.io/
[githubpages]: https://pages.github.com/
[Ubuntu14.04+Jekyll+Github Pages搭建静态博客]: http://www.open-open.com/lib/view/open1433493880510.html
[config jekyll]: https://help.github.com/articles/configuring-jekyll/
[俊民的博客]: http://spxiaomin.github.io/github_blog/
[生活与代码博文]: https://github.com/SPxiaomin/github_blog
[使用Category分类]:  https://segmentfault.com/a/1190000000406017
[HEXO+Github,搭建属于自己的博客]: http://www.jianshu.com/p/465830080ea9
[leancloud]: http://www.tuicool.com/articles/YB3EJnz 
