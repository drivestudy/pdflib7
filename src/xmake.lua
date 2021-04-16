target("pdflib")
    
    set_kind("static")

    set_targetdir("$(buildir)/$(mode)")

    add_files(
        "font/*.c",
        "pdcore/*.c",
        "pdflib/*.c"
        )

    add_includedirs(
        "../include",
        "../src/pdcore",
        "../src/font"
        )

    if is_os("macosx") then
        add_sysincludedirs(
            "/usr/local/include",
            "/usr/local/include/freetype2"
            )

        add_defines(
            "FTGL_LIBRARY_STATIC",
            "MacOS=10.14",
            "NDEBUG"
            )
    end
