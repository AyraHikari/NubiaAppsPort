.class public abstract Lcom/qualcomm/qti/snpe/SNPE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "snpe-android"

.field private static sInitialized:Z

.field private static sRuntimeVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;)V
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->init(Landroid/app/Application;)V

    return-void
.end method

.method public static addOpPackage(Landroid/app/Application;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->init(Landroid/app/Application;)V

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SNPE;->nativeAddOpPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getRuntimeVersion(Landroid/app/Application;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->init(Landroid/app/Application;)V

    sget-object p0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/snpe/SNPE;->nativeGetRuntimeVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    return-object p0
.end method

.method private static declared-synchronized init(Landroid/app/Application;)V
    .locals 2

    const-class v0, Lcom/qualcomm/qti/snpe/SNPE;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/qualcomm/qti/snpe/SNPE;->sInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "snpe-android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->nativeInit(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    sput-boolean p0, Lcom/qualcomm/qti/snpe/SNPE;->sInitialized:Z

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native nativeAddOpPackage(Ljava/lang/String;)Z
.end method

.method private static native nativeGetRuntimeVersion()Ljava/lang/String;
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method
