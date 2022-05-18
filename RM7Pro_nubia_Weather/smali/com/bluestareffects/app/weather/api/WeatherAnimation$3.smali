.class Lcom/bluestareffects/app/weather/api/WeatherAnimation$3;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/api/WeatherAnimation;->resetWeatherAlpha(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

.field final synthetic val$alpha:F


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/api/WeatherAnimation;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$3;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iput p2, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$3;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$3;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget v1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$3;->val$alpha:F

    invoke-static {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$602(Lcom/bluestareffects/app/weather/api/WeatherAnimation;F)F

    .line 99
    return-void
.end method
