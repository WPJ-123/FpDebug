include $(top_srcdir)/Makefile.tool.am

EXTRA_DIST = docs/fd-manual.xml

#----------------------------------------------------------------------------
# fpdebug-<platform>
#----------------------------------------------------------------------------

noinst_PROGRAMS  = fpdebug-@VGCONF_ARCH_PRI@-@VGCONF_OS@
if VGCONF_HAVE_PLATFORM_SEC
noinst_PROGRAMS += fpdebug-@VGCONF_ARCH_SEC@-@VGCONF_OS@
endif

FPDEBUG_SOURCES_COMMON = fd_main.c

fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_SOURCES      = \
	$(FPDEBUG_SOURCES_COMMON)
fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_CPPFLAGS     = \
	$(AM_CPPFLAGS_@VGCONF_PLATFORM_PRI_CAPS@)
fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_CFLAGS       = \
	$(AM_CFLAGS_@VGCONF_PLATFORM_PRI_CAPS@)
fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_DEPENDENCIES = \
	$(TOOL_DEPENDENCIES_@VGCONF_PLATFORM_PRI_CAPS@)
fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_LDADD        = \
	$(TOOL_LDADD_@VGCONF_PLATFORM_PRI_CAPS@)
fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_LDFLAGS      = \
	$(TOOL_LDFLAGS_@VGCONF_PLATFORM_PRI_CAPS@)
fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_LINK = \
	$(top_builddir)/coregrind/link_tool_exe_@VGCONF_OS@ \
	@VALT_LOAD_ADDRESS_PRI@ \
	$(LINK) \
	$(fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_CFLAGS) \
	$(fpdebug_@VGCONF_ARCH_PRI@_@VGCONF_OS@_LDFLAGS)

if VGCONF_HAVE_PLATFORM_SEC
fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_SOURCES      = \
	$(FPDEBUG_SOURCES_COMMON)
fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_CPPFLAGS     = \
	$(AM_CPPFLAGS_@VGCONF_PLATFORM_SEC_CAPS@)
fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_CFLAGS       = \
	$(AM_CFLAGS_@VGCONF_PLATFORM_SEC_CAPS@)
fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_DEPENDENCIES = \
	$(TOOL_DEPENDENCIES_@VGCONF_PLATFORM_SEC_CAPS@)
fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_LDADD        = \
	$(TOOL_LDADD_@VGCONF_PLATFORM_SEC_CAPS@)
fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_LDFLAGS      = \
	$(TOOL_LDFLAGS_@VGCONF_PLATFORM_SEC_CAPS@)
fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_LINK = \
	$(top_builddir)/coregrind/link_tool_exe_@VGCONF_OS@ \
	@VALT_LOAD_ADDRESS_SEC@ \
	$(LINK) \
	$(fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_CFLAGS) \
	$(fpdebug_@VGCONF_ARCH_SEC@_@VGCONF_OS@_LDFLAGS)
endif


