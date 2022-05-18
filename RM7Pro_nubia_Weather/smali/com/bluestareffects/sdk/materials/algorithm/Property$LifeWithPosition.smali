.class public Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;
.super Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/materials/algorithm/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeWithPosition"
.end annotation


# instance fields
.field private final mHigherBounds:[F

.field private mIsAlive:Z

.field private final mLowerBounds:[F


# direct methods
.method public constructor <init>(I[F[F)V
    .locals 1
    .param p1, "dimention"    # I
    .param p2, "lowerBounds"    # [F
    .param p3, "higherBounds"    # [F

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;-><init>(I)V

    .line 113
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;->mLowerBounds:[F

    .line 114
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;->mHigherBounds:[F

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;->mIsAlive:Z

    .line 116
    return-void
.end method


# virtual methods
.method public isAlive()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;->mIsAlive:Z

    return v0
.end method

.method public onResult([FF)V
    .locals 3
    .param p1, "value"    # [F
    .param p2, "time"    # F

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 121
    aget v1, p1, v0

    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;->mLowerBounds:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    aget v1, p1, v0

    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;->mHigherBounds:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 122
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;->mIsAlive:Z

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;->onResult([FF)V

    .line 126
    return-void
.end method
