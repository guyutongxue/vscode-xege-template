-- xmake 配置脚本

-- 添加远程 xege 依赖。不可以修改。
add_requires("xege")

-- 项目名称。可以修改为任意名字。
target("my-ege-project")
    
    -- 添加 xege 库依赖。不可以修改。
    add_packages("xege")
    
    -- 设置要编译的源文件。
    add_files("src/*.cpp")
    
    -- 令 MSVC 使用 UTF-8 编码
    if is_plat("windows") then
        add_cxflags("/utf-8")
    end
    
    -- 设置以 C++17 标准编译
    set_languages("c++17")
