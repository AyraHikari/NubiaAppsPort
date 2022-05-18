.class public Lcom/bluestareffects/app/weather/api/WeatherController;
.super Ljava/lang/Object;
.source "WeatherController.java"

# interfaces
.implements Lcom/bluestareffects/sdk/core/GLThreadCallBack;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mTestWeather:Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/bluestareffects/sdk/core/EffectsInstance;

    sget-object v1, Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;->GLSurfaceView:Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;

    invoke-direct {v0, p1, v1, p0}, Lcom/bluestareffects/sdk/core/EffectsInstance;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;Lcom/bluestareffects/sdk/core/GLThreadCallBack;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 25
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    return-object v0
.end method

.method public onDrawFrame()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mTestWeather:Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->update()V

    .line 48
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->onPause()V

    .line 52
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->onResume()V

    .line 56
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 43
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mTestWeather:Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;

    .line 38
    return-void
.end method

.method public setView(Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherController;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 29
    return-void
.end method
