.class public Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;
.super Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/materials/algorithm/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeWithTime"
.end annotation


# instance fields
.field private mLifeTime:F

.field private mTimePassed:F


# direct methods
.method public constructor <init>(IF)V
    .locals 1
    .param p1, "dimension"    # I
    .param p2, "lifeTime"    # F

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;-><init>(I)V

    .line 84
    iput p2, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;->mLifeTime:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;->mTimePassed:F

    .line 86
    return-void
.end method


# virtual methods
.method public isAlive()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;->mTimePassed:F

    iget v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;->mLifeTime:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTime(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 90
    iget v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;->mTimePassed:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;->mTimePassed:F

    .line 91
    return-void
.end method
