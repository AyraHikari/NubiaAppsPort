.class Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 110
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 114
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$800(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/sdk/core/EffectsInstance;

    move-result-object v1

    new-instance v2, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;

    invoke-direct {v2, p0, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;-><init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;F)V

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->postOnGLThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
