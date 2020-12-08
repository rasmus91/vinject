pkg = import('pkgconfig')
g_ir_compiler = find_program('g-ir-compiler')


vinject_src = [
    'Vinject.vala'
]

vinject_base_name = 'Vinject' + '-' + meson.project_version()#'vinject-1.0.'
vinject_gir = vinject_base_name + '.gir'
vinject_typelib = vinject_base_name + '.typelib'

libvinject = shared_library(
    meson.project_name(),
    vinject_src,
    dependencies : dependencies,

    vala_header: meson.project_name() + '.h',
    vala_vapi: meson.project_name() + '-' + meson.project_version() + '.vapi',
    vala_gir: vinject_gir,

    #version: meson.project_version(),
    install: true,
    install_dir: [true, true, true, true]
)



custom_target(vinject_typelib,
    depends: libvinject,
    command: [g_ir_compiler, '--output', '@OUTPUT@', meson.current_build_dir() / vinject_gir],
    #input: meson.current_build_dir() / 'vinject-0.1.gir',
    output: vinject_typelib,
    install: true,
    install_dir: get_option('libdir') / 'girepository-1.0')




vinject_dep = declare_dependency(link_with: libvinject, include_directories: include_directories('.'))

vinject_pc = pkg.generate(
    libvinject,
    name: meson.project_name() + '-' + meson.project_version(),
    requires: dependencies,
    description: 'A small dependency injection library',
    version: meson.project_version(),
    url: 'https://github.com/Lindegaard-IT/vinject'
)

