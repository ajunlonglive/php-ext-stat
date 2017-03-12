dnl $Id$
dnl config.m4 for extension stat

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(stat, for stat support,
dnl Make sure that the comment is aligned:
dnl [  --with-stat             Include stat support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(stat, whether to enable stat support,
dnl Make sure that the comment is aligned:
dnl [  --enable-stat           Enable stat support])

if test "$PHP_STAT" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-stat -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/stat.h"  # you most likely want to change this
  dnl if test -r $PHP_STAT/$SEARCH_FOR; then # path given as parameter
  dnl   STAT_DIR=$PHP_STAT
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for stat files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       STAT_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$STAT_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the stat distribution])
  dnl fi

  dnl # --with-stat -> add include path
  dnl PHP_ADD_INCLUDE($STAT_DIR/include)

  dnl # --with-stat -> check for lib and symbol presence
  dnl LIBNAME=stat # you may want to change this
  dnl LIBSYMBOL=stat # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $STAT_DIR/$PHP_LIBDIR, STAT_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_STATLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong stat lib version or lib not found])
  dnl ],[
  dnl   -L$STAT_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(STAT_SHARED_LIBADD)

  PHP_NEW_EXTENSION(stat, stat.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
