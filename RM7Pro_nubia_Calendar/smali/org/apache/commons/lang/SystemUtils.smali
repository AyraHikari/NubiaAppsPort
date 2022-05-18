.class public Lorg/apache/commons/lang/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final AWT_TOOLKIT:Ljava/lang/String;

.field public static final FILE_ENCODING:Ljava/lang/String;

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final IS_JAVA_1_1:Z

.field public static final IS_JAVA_1_2:Z

.field public static final IS_JAVA_1_3:Z

.field public static final IS_JAVA_1_4:Z

.field public static final IS_JAVA_1_5:Z

.field public static final IS_JAVA_1_6:Z

.field public static final IS_JAVA_1_7:Z

.field public static final IS_OS_AIX:Z

.field public static final IS_OS_HP_UX:Z

.field public static final IS_OS_IRIX:Z

.field public static final IS_OS_LINUX:Z

.field public static final IS_OS_MAC:Z

.field public static final IS_OS_MAC_OSX:Z

.field public static final IS_OS_OS2:Z

.field public static final IS_OS_SOLARIS:Z

.field public static final IS_OS_SUN_OS:Z

.field public static final IS_OS_UNIX:Z

.field public static final IS_OS_WINDOWS:Z

.field public static final IS_OS_WINDOWS_2000:Z

.field public static final IS_OS_WINDOWS_7:Z

.field public static final IS_OS_WINDOWS_95:Z

.field public static final IS_OS_WINDOWS_98:Z

.field public static final IS_OS_WINDOWS_ME:Z

.field public static final IS_OS_WINDOWS_NT:Z

.field public static final IS_OS_WINDOWS_VISTA:Z

.field public static final IS_OS_WINDOWS_XP:Z

.field public static final JAVA_AWT_FONTS:Ljava/lang/String;

.field public static final JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

.field public static final JAVA_AWT_HEADLESS:Ljava/lang/String;

.field public static final JAVA_AWT_PRINTERJOB:Ljava/lang/String;

.field public static final JAVA_CLASS_PATH:Ljava/lang/String;

.field public static final JAVA_CLASS_VERSION:Ljava/lang/String;

.field public static final JAVA_COMPILER:Ljava/lang/String;

.field public static final JAVA_ENDORSED_DIRS:Ljava/lang/String;

.field public static final JAVA_EXT_DIRS:Ljava/lang/String;

.field public static final JAVA_HOME:Ljava/lang/String;

.field private static final JAVA_HOME_KEY:Ljava/lang/String; = "java.home"

.field public static final JAVA_IO_TMPDIR:Ljava/lang/String;

.field private static final JAVA_IO_TMPDIR_KEY:Ljava/lang/String; = "java.io.tmpdir"

.field public static final JAVA_LIBRARY_PATH:Ljava/lang/String;

.field public static final JAVA_RUNTIME_NAME:Ljava/lang/String;

.field public static final JAVA_RUNTIME_VERSION:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

.field public static final JAVA_VENDOR:Ljava/lang/String;

.field public static final JAVA_VENDOR_URL:Ljava/lang/String;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JAVA_VERSION_FLOAT:F

.field public static final JAVA_VERSION_INT:I

.field public static final JAVA_VERSION_TRIMMED:Ljava/lang/String;

.field private static final JAVA_VERSION_TRIM_SIZE:I = 0x3

.field public static final JAVA_VM_INFO:Ljava/lang/String;

.field public static final JAVA_VM_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_VM_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_VERSION:Ljava/lang/String;

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final OS_ARCH:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final PATH_SEPARATOR:Ljava/lang/String;

.field public static final USER_COUNTRY:Ljava/lang/String;

.field public static final USER_DIR:Ljava/lang/String;

.field private static final USER_DIR_KEY:Ljava/lang/String; = "user.dir"

.field public static final USER_HOME:Ljava/lang/String;

.field private static final USER_HOME_KEY:Ljava/lang/String; = "user.home"

.field public static final USER_LANGUAGE:Ljava/lang/String;

.field public static final USER_NAME:Ljava/lang/String;

.field public static final USER_TIMEZONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->AWT_TOOLKIT:Ljava/lang/String;

    .line 129
    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->FILE_ENCODING:Ljava/lang/String;

    .line 149
    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->FILE_SEPARATOR:Ljava/lang/String;

    .line 169
    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_FONTS:Ljava/lang/String;

    .line 189
    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

    .line 212
    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    .line 232
    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_PRINTERJOB:Ljava/lang/String;

    .line 252
    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_CLASS_PATH:Ljava/lang/String;

    .line 272
    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_CLASS_VERSION:Ljava/lang/String;

    .line 293
    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_COMPILER:Ljava/lang/String;

    .line 313
    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_ENDORSED_DIRS:Ljava/lang/String;

    .line 333
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_EXT_DIRS:Ljava/lang/String;

    .line 353
    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_HOME:Ljava/lang/String;

    .line 373
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_IO_TMPDIR:Ljava/lang/String;

    .line 393
    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    .line 414
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_RUNTIME_NAME:Ljava/lang/String;

    .line 435
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_RUNTIME_VERSION:Ljava/lang/String;

    .line 455
    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_NAME:Ljava/lang/String;

    .line 475
    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 495
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 516
    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

    .line 537
    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VENDOR:Ljava/lang/String;

    .line 557
    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VENDOR_URL:Ljava/lang/String;

    .line 577
    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    .line 598
    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_INFO:Ljava/lang/String;

    .line 618
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_NAME:Ljava/lang/String;

    .line 638
    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

    .line 658
    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 678
    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 698
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_VENDOR:Ljava/lang/String;

    .line 718
    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_VERSION:Ljava/lang/String;

    .line 738
    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 758
    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_ARCH:Ljava/lang/String;

    .line 778
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    .line 798
    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    .line 818
    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->PATH_SEPARATOR:Ljava/lang/String;

    .line 841
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "user.region"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_COUNTRY:Ljava/lang/String;

    .line 863
    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_DIR:Ljava/lang/String;

    .line 883
    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_HOME:Ljava/lang/String;

    .line 904
    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_LANGUAGE:Ljava/lang/String;

    .line 924
    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_NAME:Ljava/lang/String;

    .line 944
    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_TIMEZONE:Ljava/lang/String;

    .line 962
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionTrimmed()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    .line 988
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsFloat()F

    move-result v0

    sput v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_FLOAT:F

    .line 1009
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsInt()I

    move-result v0

    sput v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_INT:I

    .line 1025
    const-string v0, "1.1"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_1:Z

    .line 1036
    const-string v0, "1.2"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_2:Z

    .line 1047
    const-string v0, "1.3"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_3:Z

    .line 1058
    const-string v0, "1.4"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_4:Z

    .line 1069
    const-string v0, "1.5"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_5:Z

    .line 1080
    const-string v0, "1.6"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_6:Z

    .line 1093
    const-string v0, "1.7"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_7:Z

    .line 1114
    const-string v0, "AIX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    .line 1127
    const-string v0, "HP-UX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    .line 1140
    const-string v0, "Irix"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    .line 1153
    const-string v0, "Linux"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LINUX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    .line 1166
    const-string v0, "Mac"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC:Z

    .line 1179
    const-string v0, "Mac OS X"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    .line 1192
    const-string v0, "OS/2"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_OS2:Z

    .line 1205
    const-string v0, "Solaris"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    .line 1218
    const-string v0, "SunOS"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SUN_OS:Z

    .line 1232
    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SUN_OS:Z

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_UNIX:Z

    .line 1247
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS:Z

    .line 1260
    const-string v0, "Windows"

    const-string v1, "5.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_2000:Z

    .line 1273
    const-string v0, "Windows 9"

    const-string v1, "4.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_95:Z

    .line 1287
    const-string v0, "Windows 9"

    const-string v1, "4.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_98:Z

    .line 1301
    const-string v0, "Windows"

    const-string v1, "4.9"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_ME:Z

    .line 1315
    const-string v0, "Windows NT"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_NT:Z

    .line 1329
    const-string v0, "Windows"

    const-string v1, "5.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_XP:Z

    .line 1343
    const-string v0, "Windows"

    const-string v1, "6.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_VISTA:Z

    .line 1356
    const-string v0, "Windows"

    const-string v1, "6.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_7:Z

    return-void

    .line 841
    :cond_3
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1153
    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1899
    return-void
.end method

.method public static getJavaHome()Ljava/io/File;
    .locals 2

    .prologue
    .line 1370
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getJavaIoTmpDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 1386
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getJavaVersion()F
    .locals 1

    .prologue
    .line 1403
    sget v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_FLOAT:F

    return v0
.end method

.method private static getJavaVersionAsFloat()F
    .locals 2

    .prologue
    .line 1427
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->toJavaVersionIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->toVersionFloat([I)F

    move-result v0

    return v0
.end method

.method private static getJavaVersionAsInt()I
    .locals 2

    .prologue
    .line 1451
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->toJavaVersionIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->toVersionInt([I)I

    move-result v0

    return v0
.end method

.method private static getJavaVersionMatches(Ljava/lang/String;)Z
    .locals 1
    .param p0, "versionPrefix"    # Ljava/lang/String;

    .prologue
    .line 1464
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/commons/lang/SystemUtils;->isJavaVersionMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getJavaVersionTrimmed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1473
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1474
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1475
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1476
    .local v0, "ch":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 1477
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1481
    .end local v0    # "ch":C
    :goto_1
    return-object v2

    .line 1474
    .restart local v0    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1481
    .end local v0    # "ch":C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "osNamePrefix"    # Ljava/lang/String;
    .param p1, "osVersionPrefix"    # Ljava/lang/String;

    .prologue
    .line 1494
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/lang/SystemUtils;->isOSMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getOSMatchesName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "osNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 1505
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/commons/lang/SystemUtils;->isOSNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 1525
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1530
    :goto_0
    return-object v1

    .line 1526
    :catch_0
    move-exception v0

    .line 1528
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1530
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUserDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 1546
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserHome()Ljava/io/File;
    .locals 2

    .prologue
    .line 1561
    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isJavaAwtHeadless()Z
    .locals 2

    .prologue
    .line 1574
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJavaVersionAtLeast(F)Z
    .locals 1
    .param p0, "requiredVersion"    # F

    .prologue
    .line 1595
    sget v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_FLOAT:F

    cmpl-float v0, v0, p0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJavaVersionAtLeast(I)Z
    .locals 1
    .param p0, "requiredVersion"    # I

    .prologue
    .line 1617
    sget v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isJavaVersionMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "versionPrefix"    # Ljava/lang/String;

    .prologue
    .line 1635
    if-nez p0, :cond_0

    .line 1636
    const/4 v0, 0x0

    .line 1638
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isOSMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "osName"    # Ljava/lang/String;
    .param p1, "osVersion"    # Ljava/lang/String;
    .param p2, "osNamePrefix"    # Ljava/lang/String;
    .param p3, "osVersionPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1658
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1661
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isOSNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "osName"    # Ljava/lang/String;
    .param p1, "osNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 1677
    if-nez p0, :cond_0

    .line 1678
    const/4 v0, 0x0

    .line 1680
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static toJavaVersionFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 1708
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/apache/commons/lang/SystemUtils;->toJavaVersionIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->toVersionFloat([I)F

    move-result v0

    return v0
.end method

.method static toJavaVersionInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 1736
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/apache/commons/lang/SystemUtils;->toJavaVersionIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->toVersionInt([I)I

    move-result v0

    return v0
.end method

.method static toJavaVersionIntArray(Ljava/lang/String;)[I
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 1760
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/commons/lang/SystemUtils;->toJavaVersionIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method private static toJavaVersionIntArray(Ljava/lang/String;I)[I
    .locals 8
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "limit"    # I

    .prologue
    const/4 v7, 0x0

    .line 1782
    if-nez p0, :cond_1

    .line 1783
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 1803
    :cond_0
    :goto_0
    return-object v1

    .line 1785
    :cond_1
    const-string v6, "._- "

    invoke-static {p0, v6}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1786
    .local v5, "strings":[Ljava/lang/String;
    array-length v6, v5

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v1, v6, [I

    .line 1787
    .local v1, "ints":[I
    const/4 v2, 0x0

    .line 1788
    .local v2, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_3

    if-ge v2, p1, :cond_3

    .line 1789
    aget-object v4, v5, v0

    .line 1790
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1792
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    add-int/lit8 v2, v2, 0x1

    .line 1788
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1798
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    array-length v6, v1

    if-le v6, v2, :cond_0

    .line 1799
    new-array v3, v2, [I

    .line 1800
    .local v3, "newInts":[I
    invoke-static {v1, v7, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1801
    move-object v1, v3

    goto :goto_0

    .line 1794
    .end local v3    # "newInts":[I
    .restart local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static toVersionFloat([I)F
    .locals 7
    .param p0, "javaVersions"    # [I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1828
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return v3

    .line 1831
    :cond_1
    array-length v4, p0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1832
    aget v3, p0, v6

    int-to-float v3, v3

    goto :goto_0

    .line 1834
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1835
    .local v0, "builder":Ljava/lang/StringBuffer;
    aget v4, p0, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1836
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1837
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 1838
    aget v4, p0, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1837
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1841
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1842
    :catch_0
    move-exception v1

    .line 1843
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static toVersionInt([I)I
    .locals 5
    .param p0, "javaVersions"    # [I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1869
    if-nez p0, :cond_1

    move v0, v2

    .line 1883
    :cond_0
    :goto_0
    return v0

    .line 1872
    :cond_1
    const/4 v0, 0x0

    .line 1873
    .local v0, "intVersion":I
    array-length v1, p0

    .line 1874
    .local v1, "len":I
    if-lt v1, v3, :cond_2

    .line 1875
    aget v2, p0, v2

    mul-int/lit8 v0, v2, 0x64

    .line 1877
    :cond_2
    if-lt v1, v4, :cond_3

    .line 1878
    aget v2, p0, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    .line 1880
    :cond_3
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1881
    aget v2, p0, v4

    add-int/2addr v0, v2

    goto :goto_0
.end method
