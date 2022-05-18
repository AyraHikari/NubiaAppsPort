.class public Lcn/nubia/deskclock/model/StopwatchLap;
.super Ljava/lang/Object;
.source "StopwatchLap.java"


# instance fields
.field public mLapTime:J

.field public mTotalTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcn/nubia/deskclock/model/StopwatchLap;->mLapTime:J

    .line 9
    iput-wide v0, p0, Lcn/nubia/deskclock/model/StopwatchLap;->mTotalTime:J

    .line 10
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "total"    # J

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcn/nubia/deskclock/model/StopwatchLap;->mLapTime:J

    .line 14
    iput-wide p3, p0, Lcn/nubia/deskclock/model/StopwatchLap;->mTotalTime:J

    .line 15
    return-void
.end method
