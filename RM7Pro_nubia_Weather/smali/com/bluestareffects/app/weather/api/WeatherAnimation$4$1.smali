.class Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;

.field final synthetic val$alpha:F


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;F)V
    .locals 0
    .param p1, "this$1"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;

    iput p2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;

    iget-object v1, v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$600(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)F

    move-result v1

    iget v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;->val$alpha:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->setAlpha(F)V

    .line 120
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    iget v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$4$1;->val$alpha:F

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->setBackgroundAlpha(F)V

    .line 122
    :cond_0
    return-void
.end method
