.class public abstract Lcom/zte/statistics/sdk/obj/StatisObj;
.super Ljava/lang/Object;
.source "StatisObj.java"


# instance fields
.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/zte/statistics/sdk/obj/StatisObj;->time:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/zte/statistics/sdk/obj/StatisObj;->time:J

    return-wide v0
.end method

.method public setTime(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/zte/statistics/sdk/obj/StatisObj;->time:J

    return-void
.end method
