.class public Lcn/nubia/gallery3d/video/TimeCounter;
.super Ljava/lang/Object;
.source "TimeCounter.java"


# instance fields
.field private mLastTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcn/nubia/gallery3d/video/TimeCounter;->mLastTime:J

    return-void
.end method


# virtual methods
.method public count100Ms()Z
    .locals 6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcn/nubia/gallery3d/video/TimeCounter;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 12
    iput-wide v0, p0, Lcn/nubia/gallery3d/video/TimeCounter;->mLastTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
