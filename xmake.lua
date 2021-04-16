set_project("pdflib")

set_version("7.0.5", {build = "%Y%m%d%H%M"})

set_xmakever("2.5.3")

set_config("buildir", "xmake_build")
set_config("mode", "debug")
set_config("plat", "macosx")
set_config("arch", "x86_64")

includes("src")
