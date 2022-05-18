.class Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;
.super Ljava/lang/Object;
.source "SimpleTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/app/weather/test/SimpleTestActivity;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;->this$0:Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;->this$0:Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->access$000(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;->this$0:Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->access$100(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherController;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;->this$0:Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->access$002(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;Z)Z

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;->this$0:Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->access$100(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherController;->onPause()V

    .line 35
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;->this$0:Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->access$002(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;Z)Z

    goto :goto_0
.end method
