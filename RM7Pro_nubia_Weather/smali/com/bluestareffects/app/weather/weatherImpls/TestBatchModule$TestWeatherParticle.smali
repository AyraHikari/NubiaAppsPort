.class public Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;
.super Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;
.source "TestBatchModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestWeatherParticle"
.end annotation


# instance fields
.field public mVx:F

.field public mVy:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;-><init>()V

    .line 28
    iput v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mVx:F

    .line 29
    iput v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mVy:F

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 3
    .param p1, "timePassed"    # F

    .prologue
    const/high16 v2, -0x3d380000    # -100.0f

    .line 34
    iget v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mX:F

    iget v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mVx:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mX:F

    .line 35
    iget v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mY:F

    iget v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mVy:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mY:F

    .line 36
    iget v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mX:F

    const v1, 0x44938000    # 1180.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mY:F

    const v1, 0x44fc8000    # 2020.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mAlive:Z

    .line 41
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
