.class Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$900(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$500(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$500(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->destroy()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0, v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$502(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .line 156
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    iget-object v1, v1, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$502(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .line 157
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$3;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0, v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$702(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .line 160
    :cond_1
    return-void
.end method
