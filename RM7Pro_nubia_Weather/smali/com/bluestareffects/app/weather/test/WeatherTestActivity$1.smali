.class Lcom/bluestareffects/app/weather/test/WeatherTestActivity$1;
.super Ljava/lang/Object;
.source "WeatherTestActivity.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/api/WeatherCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/test/WeatherTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$1;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSuccess()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$1;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$000(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$1$1;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$1$1;-><init>(Lcom/bluestareffects/app/weather/test/WeatherTestActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
