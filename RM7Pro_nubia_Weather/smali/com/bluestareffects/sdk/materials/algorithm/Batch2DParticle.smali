.class public abstract Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;
.super Ljava/lang/Object;
.source "Batch2DParticle.java"

# interfaces
.implements Lcom/bluestareffects/sdk/materials/algorithm/IParticle;


# instance fields
.field public mAlive:Z

.field public mAlpha:F

.field public mHeight:F

.field private mTimePassed:F

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mX:F

    .line 12
    iput v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mY:F

    .line 13
    iput v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mWidth:F

    .line 14
    iput v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mHeight:F

    .line 15
    iput v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mAlpha:F

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mAlive:Z

    .line 18
    iput v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mTimePassed:F

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mAlive:Z

    .line 31
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mAlive:Z

    return v0
.end method

.method public abstract update(F)V
.end method
