.class Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$type:Lcom/bluestareffects/app/weather/api/WeatherType;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/api/WeatherType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iput-object p2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->val$type:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->destroy()V

    .line 169
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$702(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$200(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$000(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->val$type:Lcom/bluestareffects/app/weather/api/WeatherType;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v4}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$100(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/api/ResourceManager;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->createWeather(Landroid/content/Context;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$702(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .line 172
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$300(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$400(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$300(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$400(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->onSizeChanged(II)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$6;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$700(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->setAlpha(F)V

    .line 176
    return-void
.end method
