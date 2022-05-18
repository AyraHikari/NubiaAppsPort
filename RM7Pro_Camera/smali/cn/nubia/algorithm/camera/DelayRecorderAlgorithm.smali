.class public Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;,
        Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHandler:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;

.field private mListener:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nubia_delay_recorder"

    .line 39
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;-><init>(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$1;)V

    iput-object v0, p0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->mHandler:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;

    .line 43
    iput-object p1, p0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->mListener:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

    .line 44
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->_init(Ljava/lang/Object;)V

    return-void
.end method

.method private native _init(Ljava/lang/Object;)V
.end method

.method private native _input(Landroid/graphics/Bitmap;)V
.end method

.method private native _input([BII)V
.end method

.method private native _release()V
.end method

.method private native _setDegrees(I)V
.end method

.method private native _start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _stop()V
.end method

.method static synthetic access$100(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;)Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->mListener:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

    return-object p0
.end method

.method public static postEventFromNative(Ljava/lang/Object;III)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postEventFromNative what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelayRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    if-eqz p0, :cond_0

    .line 61
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 62
    iput p1, v0, Landroid/os/Message;->what:I

    .line 63
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 64
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 65
    iget-object p0, p0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->mHandler:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;

    invoke-virtual {p0, v0}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public input(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->_input(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public input([BII)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->_input([BII)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->_release()V

    return-void
.end method

.method public setDegrees(I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->_setDegrees(I)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->mFileName:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->_stop()V

    return-void
.end method
