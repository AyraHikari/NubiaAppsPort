.class public Lcn/nubia/video/mediajni/VideoEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEffect"


# instance fields
.field private mNativeContext:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native native_init(Ljava/lang/String;IILjava/lang/String;I)V
.end method

.method private native native_processEffect([B[B)V
.end method

.method private native native_release()V
.end method


# virtual methods
.method public effectInit(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/nubia/video/mediajni/VideoEffect;->native_init(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public effectProcess([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediajni/VideoEffect;->native_processEffect([B[B)V

    return-void
.end method

.method public effectRelease()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediajni/VideoEffect;->native_release()V

    return-void
.end method
