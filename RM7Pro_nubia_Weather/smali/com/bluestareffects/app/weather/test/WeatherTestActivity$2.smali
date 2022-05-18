.class Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;
.super Ljava/lang/Object;
.source "WeatherTestActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->initViewPager()V
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
    .line 88
    iput-object p1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 119
    :pswitch_0
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$200(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    move-result-object v1

    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$100(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 99
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$200(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->resetWeatherAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$400(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;->this$0:Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .line 101
    invoke-static {v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$100(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-static {v2, v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->access$300(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;Lcom/bluestareffects/app/weather/api/WeatherType;)I

    move-result v0

    .line 100
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 102
    const-string v0, "wam"

    const-string v1, "onPageSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
