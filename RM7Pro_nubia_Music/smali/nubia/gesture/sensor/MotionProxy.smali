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
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 14
    sput-boolean v5, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    .line 21
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    const-string v2, "libtmpdir"

    .line 21
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/io/File;

    const-string v2, "optimized"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 26
    new-instance v0, Ljava/io/File;

    const-string v2, "file:///system/framework/gesture.jar"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 29
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 27
    invoke-direct {v2, v0, v1, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 30
    const-string v0, "nubia.gesture.sensor.MotionManager"

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnubia/gesture/sensor/MotionProxy;->s_DetectorCls:Ljava/lang/Class;

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    sput-boolean v5, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v5, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    .line 59
    sget-boolean v0, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    :try_start_0
    sget-object v0, Lnubia/gesture/sensor/MotionProxy;->s_DetectorCls:Ljava/lang/Class;

    const-string v1, "getDefaultDetector"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    iget-object v0, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 74
    iput-boolean v5, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    iput-boolean v5, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v5, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    .line 40
    sget-boolean v0, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    :try_start_0
    sget-object v0, Lnubia/gesture/sensor/MotionProxy;->s_DetectorCls:Ljava/lang/Class;

    const-string v1, "getDefaultDetector"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [I

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    iget-object v0, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 54
    iput-boolean v5, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    iput-boolean v5, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public registerListener(Lnubia/gesture/sensor/MotionListener;)V
    .locals 5

    .prologue
    .line 78
    sget-boolean v0, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "registerListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnubia/gesture/sensor/MotionListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Lnubia/gesture/sensor/MotionListener;)V
    .locals 5

    .prologue
    .line 91
    sget-boolean v0, Lnubia/gesture/sensor/MotionProxy;->LOAD_CLASS_SUCCESS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnubia/gesture/sensor/MotionProxy;->LOAD_METHOD_SUCCESS:Z

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "unregisterListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnubia/gesture/sensor/MotionListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lnubia/gesture/sensor/MotionProxy;->mDetectorObj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
