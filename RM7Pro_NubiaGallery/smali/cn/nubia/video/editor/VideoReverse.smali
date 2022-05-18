.class public Lcn/nubia/video/editor/VideoReverse;
.super Ljava/lang/Object;
.source "VideoReverse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/editor/VideoReverse$OnHandleListener;
    }
.end annotation


# static fields
.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoReverse"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDstVideoPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mNativeContext:J

.field private mProgress:Lcn/nubia/commonui/app/ProgressDialog;

.field private mSrcVideoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nubia_media_player"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcn/nubia/video/editor/VideoReverse;->mInitialized:Z

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcn/nubia/video/editor/VideoReverse;->mSrcVideoPath:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcn/nubia/video/editor/VideoReverse;->mDstVideoPath:Ljava/lang/String;

    return-void
.end method

.method private static native handle([Ljava/lang/String;)I
.end method

.method private native native_startReverse(I[Ljava/lang/String;)I
.end method
