.class Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;
.super Ljava/lang/Object;
.source "WeatherTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->initButton()V
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
    .line 125
    iput-object p1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$500(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v0

    .line 129
    .local v0, "type":Lcom/bluestareffects/app/weather/api/WeatherType;
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$200(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 130
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$100(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v2}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$600(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$400(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v2, v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$300(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;Lcom/bluestareffects/app/weather/api/WeatherType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    return-void
.end method
