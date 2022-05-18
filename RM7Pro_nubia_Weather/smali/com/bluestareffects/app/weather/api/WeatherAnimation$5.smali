.class Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WeatherAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$800(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/sdk/core/EffectsInstance;

    move-result-object v0

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$2;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$2;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;)V

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->postOnGLThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$800(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/sdk/core/EffectsInstance;

    move-result-object v0

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;)V

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->postOnGLThread(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$800(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/sdk/core/EffectsInstance;

    move-result-object v0

    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$1;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$1;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;)V

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->postOnGLThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method
