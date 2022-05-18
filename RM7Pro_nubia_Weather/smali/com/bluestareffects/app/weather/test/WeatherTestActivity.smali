.class public Lcom/bluestareffects/app/weather/test/WeatherTestActivity;
.super Landroid/app/Activity;
.source "WeatherTestActivity.java"


# instance fields
.field private isIs:Z

.field private listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

.field private mCityWeatherTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/app/weather/api/WeatherType;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrType:I

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

.field private mWeatherTypeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCityWeatherTypeList:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->isIs:Z

    .line 62
    new-instance v0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$1;

    invoke-direct {v0, p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$1;-><init>(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCityWeatherTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;Lcom/bluestareffects/app/weather/api/WeatherType;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;
    .param p1, "x1"    # Lcom/bluestareffects/app/weather/api/WeatherType;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->getWeatherInfo(Lcom/bluestareffects/app/weather/api/WeatherType;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherTypeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->getNextWeather()Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/WeatherTestActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->getLastWeather()Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v0

    return-object v0
.end method

.method private getLastWeather()Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    .line 181
    iget v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 182
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_MAX:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    .line 185
    :cond_0
    invoke-static {}, Lcom/bluestareffects/app/weather/api/WeatherType;->values()[Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v0

    iget v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getNextWeather()Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    .line 191
    iget v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_MAX:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 192
    sget-object v0, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_DEFAULT:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    .line 195
    :cond_0
    invoke-static {}, Lcom/bluestareffects/app/weather/api/WeatherType;->values()[Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v0

    iget v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCurrType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getWeatherInfo(Lcom/bluestareffects/app/weather/api/WeatherType;)I
    .locals 3
    .param p1, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;

    .prologue
    .line 199
    const/16 v1, 0x2a

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_DEFAULT:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_SUNNY:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_CLOUDY:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_OVERCAST:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_THUNDER_SHOWER:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_THUNDER_SHOWER_HAIL:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_RAIN_SNOW:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_HAIL:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_RAIN_HAIL:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_LIGHT_RAIN:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_MODERATE_RAIN:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_HEAVY_RAIN:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_STORM:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_LIGHT_SNOW:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_MODERATE_SNOW:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_HEAVY_SNOW:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_BLIZZARD:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_FOG:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_HAZE:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_DUST:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_DAY_SAND_STORM:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_DEFAULT:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_SUNNY:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_CLOUDY:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_OVERCAST:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_THUNDER_SHOWER:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_THUNDER_SHOWER_HAIL:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_RAIN_SNOW:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_HAIL:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_RAIN_HAIL:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_LIGHT_RAIN:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_MODERATE_RAIN:I

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_HEAVY_RAIN:I

    aput v2, v0, v1

    const/16 v1, 0x21

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_STORM:I

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_LIGHT_SNOW:I

    aput v2, v0, v1

    const/16 v1, 0x23

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_MODERATE_SNOW:I

    aput v2, v0, v1

    const/16 v1, 0x24

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_HEAVY_SNOW:I

    aput v2, v0, v1

    const/16 v1, 0x25

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_BLIZZARD:I

    aput v2, v0, v1

    const/16 v1, 0x26

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_FOG:I

    aput v2, v0, v1

    const/16 v1, 0x27

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_HAZE:I

    aput v2, v0, v1

    const/16 v1, 0x28

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_DUST:I

    aput v2, v0, v1

    const/16 v1, 0x29

    sget v2, Lcom/bluestareffects/R$string;->WEATHER_NIGHT_SAND_STORM:I

    aput v2, v0, v1

    .line 244
    .local v0, "stringIdArray":[I
    invoke-virtual {p1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    aget v1, v0, v1

    return v1
.end method

.method private initButton()V
    .locals 5

    .prologue
    .line 124
    sget v2, Lcom/bluestareffects/R$id;->button_next:I

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;

    invoke-direct {v2, p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$3;-><init>(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget v2, Lcom/bluestareffects/R$id;->button_pre:I

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 136
    .local v1, "buttonPre":Landroid/widget/Button;
    new-instance v2, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$4;

    invoke-direct {v2, p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$4;-><init>(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherTypeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCityWeatherTypeList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 146
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 145
    invoke-direct {p0, v2}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->getWeatherInfo(Lcom/bluestareffects/app/weather/api/WeatherType;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 147
    return-void
.end method

.method private initViewPager()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 76
    sget v6, Lcom/bluestareffects/R$id;->view_pager:I

    invoke-virtual {p0, v6}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/bluestareffects/R$layout;->weather_content_item:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "view":Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/bluestareffects/R$layout;->weather_content_item_pager2:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, "view1":Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/bluestareffects/R$layout;->weather_content_item_pager3:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 80
    .local v3, "view2":Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/bluestareffects/R$layout;->weather_content_item_pager4:I

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, "view3":Landroid/view/View;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v5, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;

    iget-object v6, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-direct {v0, p0, v5, v6}, Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V

    .line 87
    .local v0, "adapter":Lcom/bluestareffects/app/weather/test/WeatherPagerAdapter;
    iget-object v6, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 88
    iget-object v6, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;

    invoke-direct {v7, p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity$2;-><init>(Lcom/bluestareffects/app/weather/test/WeatherTestActivity;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->finish()V

    .line 251
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->overridePendingTransition(II)V

    .line 252
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 38
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 44
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-direct {v0, p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 45
    sget v0, Lcom/bluestareffects/R$layout;->activity_simple_test:I

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->setContentView(I)V

    .line 46
    sget v0, Lcom/bluestareffects/R$id;->glSurfaceView:I

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 47
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onCreate(Landroid/opengl/GLSurfaceView;)V

    .line 48
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCityWeatherTypeList:Ljava/util/ArrayList;

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_SUNNY:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCityWeatherTypeList:Ljava/util/ArrayList;

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_NIGHT_CLOUDY:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCityWeatherTypeList:Ljava/util/ArrayList;

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCityWeatherTypeList:Ljava/util/ArrayList;

    sget-object v1, Lcom/bluestareffects/app/weather/api/WeatherType;->WEATHER_DAY_SAND_STORM:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget v0, Lcom/bluestareffects/R$id;->types_text_view:I

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherTypeTextView:Landroid/widget/TextView;

    .line 53
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->initViewPager()V

    .line 54
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->initButton()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->isIs:Z

    .line 59
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setWeatherListener(Lcom/bluestareffects/app/weather/api/WeatherCreateListener;)V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onDestroy()V

    .line 176
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onResume()V

    .line 165
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->isIs:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mCityWeatherTypeList:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeather(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 170
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 158
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/WeatherTestActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onPause()V

    .line 159
    return-void
.end method
