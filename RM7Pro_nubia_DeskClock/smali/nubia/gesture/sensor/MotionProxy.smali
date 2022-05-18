.class public final Lnubia/gesture/sensor/MotionProxy;
.super Ljava/lang/Object;
.source "MotionProxy.java"


# static fields
.field public static LOAD_CLASS_SUCCESS:Z

.field private static s_DetectorCls:Ljava/lang/Class;


# instance fields
.field public LOAD_METHOD_SUCCESS:Z

.field private mDetectorObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 14
    sput-boolean v9, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    .line 21
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "java.io.tmpdir"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    const-string v6, "libtmpdir"

    .line 21
    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v1, "TMP_DIR":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "optimized"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .local v0, "OPTIMIZED_DIR":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 26
    new-instance v4, Ljava/io/File;

    const-string v5, "file:///system/framework/gesture.jar"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v4, "jarFile":Ljava/io/File;
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 29
    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 27
    invoke-direct {v2, v5, v6, v7, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 30
    .local v2, "clsLoader":Ldalvik/system/DexClassLoader;
    const-string v5, "nubia.gesture.sensor.MotionManager"

    invoke-virtual {v2, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lnubia/gesture/sensor/MotionProxy;->s_DetectorCls:Ljava/lang/Class;

    .line 31
    const/4 v5, 0x1

    sput-boolean v5, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "OPTIMIZED_DIR":Ljava/io/File;
    .end local v2    # "clsLoader":Ldalvik/system/DexClassLoader;
    .end local v4    # "jarFile":Ljava/io/File;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v3

    .line 33
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    sput-boolean v9, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v7, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    .line 59
    sget-boolean v2, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    :try_start_0
    sget-object v2, Lnubia/gesture/sensor/MotionProxy;->s_DetectorCls:Ljava/lang/Class;

    const-string v3, "getDefaultDetector"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    .local v1, "getDefaultDetector":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 63
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "getDefaultDetector":Ljava/lang/reflect/Method;
    :goto_1
    iget-object v2, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 74
    iput-boolean v7, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    goto :goto_0

    .line 66
    .restart local v1    # "getDefaultDetector":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 68
    .end local v1    # "getDefaultDetector":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    iput-boolean v7, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "types"    # [I

    .prologue
    const/4 v7, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v7, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    .line 40
    sget-boolean v2, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    :try_start_0
    sget-object v2, Lnubia/gesture/sensor/MotionProxy;->s_DetectorCls:Ljava/lang/Class;

    const-string v3, "getDefaultDetector"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [I

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 43
    .local v1, "getDefaultDetector":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 44
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    .line 45
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "getDefaultDetector":Ljava/lang/reflect/Method;
    :goto_1
    iget-object v2, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 54
    iput-boolean v7, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    goto :goto_0

    .line 47
    .restart local v1    # "getDefaultDetector":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 49
    .end local v1    # "getDefaultDetector":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v7, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public registerListener(Lnubia/gesture/sensor/MotionListener;)V
    .locals 7
    .param p1, "listener"    # Lnubia/gesture/sensor/MotionListener;

    .prologue
    .line 78
    sget-boolean v2, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    if-eqz v2, :cond_0

    .line 80
    :try_start_0
    iget-object v2, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "registerListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lnubia/gesture/sensor/MotionListener;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 81
    .local v1, "registerListener":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 82
    iget-object v2, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "registerListener":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Lnubia/gesture/sensor/MotionListener;)V
    .locals 7
    .param p1, "listener"    # Lnubia/gesture/sensor/MotionListener;

    .prologue
    .line 91
    sget-boolean v2, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    if-eqz v2, :cond_0

    .line 93
    :try_start_0
    iget-object v2, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "unregisterListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lnubia/gesture/sensor/MotionListener;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    .local v1, "unregisterListener":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 95
    iget-object v2, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "unregisterListener":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
