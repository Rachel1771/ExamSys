# 软工课设--云计算教务系统

## intro



这是大三下册的软工课设，按照服创的参赛赛题来进行项目开发，选题为[【A19】基于云计算平台构建教学管理系统【华云数据】](http://www.fwwb.org.cn/topic/show/e3979e02-cb69-4889-92af-4e867e4f3a4c)。 我们小组采用的是前后端分离的模式进行开发，采用主流的前端技术栈：Vue、JS、CSS、Element-UI、Node。后端主流技术栈：JavaWeb、SpringMVC、Mybatis++、Springboot等。开发设计了一个基础的教务系统，能满足教师和学生的日常教学需求，提供了教师教学功能、在线考勤、在线测试、在线私聊等功能。 主要优点是开发、部署简单快捷、界面设计友好、代码结构清晰。支持web端和微信小程序，能覆盖到pc机和手机等设备。 支持多种部署方式：集成部署、前后端分离部署。 

## 1.技术栈

### 2.1.后端

- spring-boot 2.1.6.RELEASE
- spring-boot-security 
- undertow 
- mysql 
- mybatis ++
- hikari 
- 七牛云存储
- 阿里云服务器

### 2.2.前端

- vue-cli4
- element-ui 
- vue-element-admin 
- echarts 
- ueditor

### 2.3.Linux

- CentOS7.x
- NodeJs 16.x.x
- Jdk 1.8
- Mysql 8.x

## 3.运行

### 3.1后端

1.执行文件夹中的sql脚本，根据自己的情况设置数据库名字，默认配置的是softwaresys。



进入application.yml进行文件配置：



2.配置qn，配置七牛云存储，用于文件的上传，在七牛云创建好bucket后就可以配置好文件中的url、bucket、access-key、secret-key（后两项在七牛云个人中心查看）



3.配置Spring.datasource.hikari数据池，根据自己的要求来进行参数配置即可。



4.本地运行则配置application-dev.yml，配置好数据库的账密和数据库名称。



5.服务器部署，则配置application-prod.yml，信息都是是服务器数据库中的个人信息。



6.进入service目录下启动ServiceApplication即可，如遇到本地Web启动报错无效文件路径，一般都是undertow的问题，切换Tomcat即可解决。



### 3.2前端

前端由另一同学完成，可以在 [Rakuuuu](https://github.com/Rakuuuu) 这里拉取对应的教师端和学生端前端代码。



拉取下来执行：

```npm
npm config set sass_binary_site https://npm.taobao.org/mirrors/node-sass/
```

```npm
npm install
```

```npm
npm run serve
```

后端开启的是8000端口，本地即可通过localhost:8000进行访问测试。

### 3.3部署

支持集成部署和前后端分离部署

#### 3.3.1 集成部署

将学生端和教师端的前端代码进行打包

```npm
npm run build
```

- 打包后可以得到student和admin两个文件夹
- 将前端资源放在Service/src/main/resources/static目录下
- 使用maven工具进行打包，在target目录下可以看到对应版本的jar包
- 根据前述要求在 application-prod.yml 配置好服务器数据库的信息
- 上传到服务器中，并且执行以下指令：

```java
nohup java -Duser.timezone=Asia/Shanghai -jar -Dspring.profiles.active=prod  service-5.0.0.jar  > log.txt  2>&1 &
```

此处注意在服务器中开放8000端口。

### 3.3.2分离部署



