.class public Lcn/nubia/algorithm/camera/MultiFocus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MultiFocus"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native init(II)J
.end method

.method private static native process(JI)I
.end method

.method private static native unInit(J)V
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 18
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/MultiFocus;->a:J

    invoke-static {v0, v1, p1}, Lcn/nubia/algorithm/camera/MultiFocus;->process(JI)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    .line 14
    iget-wide v0, p0, Lcn/nubia/algorithm/camera/MultiFocus;->a:J

    invoke-static {v0, v1}, Lcn/nubia/algorithm/camera/MultiFocus;->unInit(J)V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 10
    invoke-static {p1, p2}, Lcn/nubia/algorithm/camera/MultiFocus;->init(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/algorithm/camera/MultiFocus;->a:J

    return-void
.end method
