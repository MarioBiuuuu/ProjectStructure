#iOSProjectStructure  


###**工程目录总览，所有项目都将copy模板工程，无需重新创建和配置新工程。:D 看这里 [工具类仓库传送门！！](http://git.oschina.net/techoz/iOSPluginTools)**

###项目结构如下：  

![结构截图](http://git.oschina.net/uploads/images/2016/0831/152230_11d5ce64_977344.png "结构截图")
* __Roots:__ 只存放模块界面的对应类文件。<font color=red>**（规范）** </font>
* __Extend:__ 存放所有的Category以及类扩展，Protocol存放创建的协议
* __System:__ 存放所有系统级目录和类文件。<font color=red> **（不准在此目录下新建任何目录和文件）** </font>

	* Base  	: 存放所有系统级父类文件。<font color=red>**（不准在此目录下新建任何目录和文件）** </font>
	* DB		: 存放所有数据库操作类。所有对数据库的操作必须新建或存放到相应的Models类和Caches类中。其中Models类放到Models目录中，Caches类放到Caches目录中。
	* NetWork	: 存放网络请求访问类。<font color=red> **（不准在此目录下新建任何目录和文件）** </font>

	* UI		: 存放自定义UI控件。
	* Util 		: 存放自定义工具类。
	
* __Resource	:__ 存放所有资源文件。<font color=red> **（不准在此目录下新建任何目录和文件）** </font>
	* LKBaseDefine	:  存放所有宏定义。<font color=red>  **（所有宏定义必须写在这里 ）** </font>
	* Image			: 存放资源文件所需的所有图片文件。
	* Media			: 存放所有多媒体文件，如各种音频、视频文件。<font color=red> **（不准在此目录下新建任何目录和除音频、视频以外的其他文件）** </font>
	* Font			: 存放所有字体文件。<font color=red> **（不准在此目录下新建任何目录和除字体类型的其他文件 ）** </font>
	* File			: 存放所有除上述四类以外的资源文件。<font color=red> **（不准在此目录下新建任何目录、图片、音频视频、xib文件 ）** </font>
* __PluginTool :__ 存放第三方库、类文件。

