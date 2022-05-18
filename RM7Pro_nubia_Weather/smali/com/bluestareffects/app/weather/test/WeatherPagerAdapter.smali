.class public Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WeatherPagerAdapter.java"


# instance fields
.field private mAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

.field private mContext:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "animation"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bluestareffects/app/weather/api/WeatherAnimation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mViews:Ljava/util/ArrayList;

    .line 28
    iput-object p3, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "scroll_view"

    invoke-static {v2, v3, v4}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 46
    .local v0, "scrollView":Landroid/widget/ScrollView;
    new-instance v1, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter$1;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter$1;-><init>(Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 59
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 38
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
