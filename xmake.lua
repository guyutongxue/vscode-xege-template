-- xmake 配置脚本

-- 添加远程 xege 依赖。不可以修改。
add_requires("xege")

-- 解决msvc编译器下的bug
if is_plat("windows") then
    add_cxflags("/utf-8")
end

set_languages("c++17")

-- 项目名称。可以修改为任意名字。
target("my-ege-project")

    -- 项目生成二进制可执行文件（而非库）。不可以修改。
    set_kind("binary")

    -- 添加 xege 库依赖。不可以修改。
    add_packages("xege")
    
    -- 设置要编译的源文件。
    add_files("src/*.cpp")
