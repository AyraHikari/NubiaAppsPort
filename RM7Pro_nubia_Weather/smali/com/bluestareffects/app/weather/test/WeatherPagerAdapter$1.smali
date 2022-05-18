.class Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter$1;
.super Ljava/lang/Object;
.source "WeatherPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter$1;->this$0:Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    .line 50
    if-gez p3, :cond_0

    .line 51
    const/4 p3, 0x0

    .line 52
    :cond_0
    const/16 v1, 0x32a

    if-le p3, v1, :cond_1

    .line 53
    const/16 p3, 0x32a

    .line 54
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p3

    const v3, 0x444a8000    # 810.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v0, v1, v2

    .line 55
    .local v0, "a":F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter$1;->this$0:Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->access$000(Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setUpTranslationAlpha(F)V

    .line 56
    return-void
.end method
