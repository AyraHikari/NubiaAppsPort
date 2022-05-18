.class Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$1;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->onAnimationStart(Landroid/animation/Animator;)V
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
    .line 129
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$1;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5$1;->this$1:Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;

    iget-object v0, v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation$5;->this$0:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->access$902(Lcom/bluestareffects/app/weather/api/WeatherAnimation;Z)Z

    .line 133
    return-void
.end method
