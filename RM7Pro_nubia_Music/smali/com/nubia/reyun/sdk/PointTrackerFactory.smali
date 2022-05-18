.class public Lcom/nubia/reyun/sdk/PointTrackerFactory;
.super Ljava/lang/Object;
.source "PointTrackerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPointTracker(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/IPointTracker;
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    return-object v0
.end method
