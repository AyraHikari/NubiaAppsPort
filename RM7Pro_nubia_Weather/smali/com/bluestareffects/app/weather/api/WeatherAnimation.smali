.class public Lcom/bluestareffects/app/weather/api/WeatherAnimation;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"

# interfaces
.implements Lcom/bluestareffects/sdk/core/GLThreadCallBack;


# instance fields
.field private mAlpha:F

.field private mAnimationCancel:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

.field private mHeight:I

.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mListener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

.field private mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mSwipeAnimator:Landroid/animation/ValueAnimator;

.field private mWeatherFactory:Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;

.field private mWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 25
    iput v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mAlpha:F

    .line 31
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/bluestareffects/sdk/core/EffectsInstance;

    sget-object v1, Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;->GLSurfaceView:Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;

    invoke-direct {v0, p1, v1, p0}, Lcom/bluestareffects/sdk/core/EffectsInstance;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;Lcom/bluestareffects/sdk/core/GLThreadCallBack;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 34
    new-instance v0, Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-direct {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 35
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 36
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v2}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setAlpha(F)V

    .line 37
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWeatherFactory:Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/api/ResourceManager;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWeatherFactory:Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    return-object v0
.end method

.method static synthetic access$502(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    .locals 0
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .param p1, "x1"    # Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    return-object p1
.end method

.method static synthetic access$600(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)F
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mAlpha:F

    return v0
.end method

.method static synthetic access$602(Lcom/bluestareffects/app/weather/api/WeatherAnimation;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 14
    iput p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mAlpha:F

    return p1
.end method

.method static synthetic access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    return-object v0
.end method

.method static synthetic access$702(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    .locals 0
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .param p1, "x1"    # Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    return-object p1
.end method

.method static synthetic access$800(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/sdk/core/EffectsInstance;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mAnimationCancel:Z

    return v0
.end method

.method static synthetic access$902(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mAnimationCancel:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/opengl/GLSurfaceView;)V
    .locals 2
    .param p1, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 42
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->setRootModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->destroy()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->destroy()V

    .line 58
    :cond_1
    return-void
.end method

.method public onDrawFrame()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->update()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->update()V

    .line 214
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->onPause()V

    .line 47
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->onResume()V

    .line 51
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWidth:I

    if-eq v0, p1, :cond_0

    .line 193
    iput p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWidth:I

    .line 194
    :cond_0
    iget v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mHeight:I

    if-eq v0, p2, :cond_1

    .line 195
    iput p2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mHeight:I

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    invoke-virtual {v0, p1, p2}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->onSizeChanged(II)V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mNextWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    invoke-virtual {v0, p1, p2}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->onSizeChanged(II)V

    .line 203
    :cond_3
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWeatherFactory:Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->createWeather(Landroid/content/Context;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .line 185
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mCurrentWeather:Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    iget v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mListener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mListener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    invoke-interface {v0}, Lcom/bluestareffects/app/weather/api/WeatherCreateListener;->createSuccess()V

    .line 188
    :cond_0
    return-void
.end method

.method public resetWeatherAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$3;

    invoke-direct {v1, p0, p1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$3;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;F)V

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->postOnGLThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public setUpTranslationAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$2;

    invoke-direct {v1, p0, p1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$2;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;F)V

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->postOnGLThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public setWeatherListener(Lcom/bluestareffects/app/weather/api/WeatherCreateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mListener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    .line 219
    return-void
.end method

.method public setWeatherType(Lcom/bluestareffects/app/weather/api/WeatherType;)V
    .locals 0
    .param p1, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 62
    return-void
.end method

.method public switchWeather(Lcom/bluestareffects/app/weather/api/WeatherType;)V
    .locals 2
    .param p1, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 66
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/api/WeatherType;)V

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->postOnGLThread(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public switchWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherType;)V
    .locals 4
    .param p1, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 105
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mSwipeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mSwipeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mSwipeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 108
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mSwipeAnimator:Landroid/animation/ValueAnimator;

    .line 109
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mSwipeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mSwipeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mSwipeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 164
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;

    invoke-direct {v1, p0, p1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/api/WeatherType;)V

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->postOnGLThread(Ljava/lang/Runnable;)V

    .line 178
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->mSwipeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 179
    return-void

    .line 108
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
