.class public Lcn/nubia/deskclock/model/StopWatchModel;
.super Ljava/lang/Object;
.source "StopWatchModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAccumulatedTime:J

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v0, p0, Lcn/nubia/deskclock/model/StopWatchModel;->mStartTime:J

    .line 10
    iput-wide v0, p0, Lcn/nubia/deskclock/model/StopWatchModel;->mAccumulatedTime:J

    return-void
.end method


# virtual methods
.method public getTotleTime()J
    .locals 6

    .prologue
    .line 13
    iget-wide v0, p0, Lcn/nubia/deskclock/model/StopWatchModel;->mAccumulatedTime:J

    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getTimeNow()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/deskclock/model/StopWatchModel;->mStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setAccumulatedTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcn/nubia/deskclock/model/StopWatchModel;->mAccumulatedTime:J

    .line 22
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcn/nubia/deskclock/model/StopWatchModel;->mStartTime:J

    .line 18
    return-void
.end method
