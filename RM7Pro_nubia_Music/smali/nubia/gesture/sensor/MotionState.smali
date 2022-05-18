.class public Lnubia/gesture/sensor/MotionState;
.super Ljava/lang/Object;
.source "MotionState.java"


# instance fields
.field private name:Ljava/lang/String;

.field private speed:I

.field private state:I

.field private timestamp:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lnubia/gesture/sensor/MotionState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lnubia/gesture/sensor/MotionState;->speed:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lnubia/gesture/sensor/MotionState;->state:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lnubia/gesture/sensor/MotionState;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lnubia/gesture/sensor/MotionState;->type:I

    return v0
.end method
