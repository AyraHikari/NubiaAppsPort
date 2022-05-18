.class Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeather(Lcom/bluestareffects/app/weather/api/WeatherType;)V
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
    .line 66
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iput-object p2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->val$type:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$200(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$000(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->val$type:Lcom/bluestareffects/app/weather/api/WeatherType;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v4}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$100(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/api/ResourceManager;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->createWeather(Landroid/content/Context;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v0

    .line 70
    .local v0, "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$300(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$400(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$300(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$400(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->onSizeChanged(II)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$500(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$500(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->destroy()V

    .line 75
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$502(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$502(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Lcom/bluestareffects/app/weather/weatherImpls/Weather;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    .line 78
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$500(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;

    move-result-object v1

    iget-object v2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$1;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-static {v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$600(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->setAlpha(F)V

    .line 79
    return-void
.end method
