.class public Lcn/nubia/gallery3d/ui/AnimationTime;
.super Ljava/lang/Object;
.source "AnimationTime.java"


# static fields
.field private static volatile sTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()J
    .locals 2

    .line 38
    sget-wide v0, Lcn/nubia/gallery3d/ui/AnimationTime;->sTime:J

    return-wide v0
.end method

.method public static startTime()J
    .locals 2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/gallery3d/ui/AnimationTime;->sTime:J

    .line 43
    sget-wide v0, Lcn/nubia/gallery3d/ui/AnimationTime;->sTime:J

    return-wide v0
.end method

.method public static update()V
    .locals 2

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/gallery3d/ui/AnimationTime;->sTime:J

    return-void
.end method
