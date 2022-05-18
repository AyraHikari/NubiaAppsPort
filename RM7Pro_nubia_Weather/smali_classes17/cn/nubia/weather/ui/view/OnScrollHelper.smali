.class public Lcn/nubia/weather/ui/view/OnScrollHelper;
.super Ljava/lang/Object;
.source "OnScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;
    }
.end annotation


# static fields
.field private static final ACTION_AND_STATUS_HEIGHT:F = 0.0f

.field private static final ALPHA_DISTANCE:F = 50.0f

.field private static final ALPHA_DISTANCE_START:F = 270.0f

.field private static final MOVE_DISTANCE:F = 320.0f

.field public static final PULL_DOWN_IDLE:I = -0x1

.field public static final PULL_DOWN_NOT_OK:I = 0x0

.field public static final PULL_DOWN_OK:I = 0x1

.field public static final PULL_DOWN_REFRESHING:I = 0x2

.field private static final REFRESH_ALPHA_DISTANCE:F = 20.0f

.field public static final SCROOL_DOWN_HIDE_ANIM_DISTANCE:I = 0x64

.field public static final SCROOL_DOWN_TOP_BAR_SHOW_DISTANCE:I = 0x190

.field public static final TAG:Ljava/lang/String; = "OnScrollHelper"

.field private static final TEXT_SCALE_RATIO:F = 0.71f


# instance fields
.field private REFRESH_DISTANCE:F

.field private mActivity:Landroid/app/Activity;

.field private mCityBarLayout:Landroid/widget/LinearLayout;

.field private mCityTextView:Landroid/view/View;

.field private mDensity:F

.field private mDivideView:Landroid/view/View;

.field private mIsNeedChangeAlpha:Z

.field private mIsRefreshing:Z

.field private mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

.field private mRefreshPanelLayout:Landroid/widget/LinearLayout;

.field private mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

.field private mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

.field private mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/weather/ui/view/NubiaOverScrollView;Landroid/view/View;Landroid/view/View;Lcn/nubia/weather/ui/view/CircleView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "scrollView"    # Lcn/nubia/weather/ui/view/NubiaOverScrollView;
    .param p3, "cityTextView"    # Landroid/view/View;
    .param p4, "dividerView"    # Landroid/view/View;
    .param p5, "circleView"    # Lcn/nubia/weather/ui/view/CircleView;
    .param p6, "layout"    # Landroid/widget/LinearLayout;
    .param p7, "cityBarLayout"    # Landroid/widget/LinearLayout;
    .param p8, "weatherAnimation"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->REFRESH_DISTANCE:F

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    .line 39
    iput-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 40
    iput-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mActivity:Landroid/app/Activity;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsNeedChangeAlpha:Z

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    .line 46
    iput-object p1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    .line 48
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->setClipBoundsStartY(I)V

    .line 49
    iput-object p3, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    .line 50
    iput-object p4, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDivideView:Landroid/view/View;

    .line 51
    iput-object p5, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    .line 52
    iput-object p6, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshPanelLayout:Landroid/widget/LinearLayout;

    .line 53
    iput-object p7, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityBarLayout:Landroid/widget/LinearLayout;

    .line 54
    iput-object p8, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 55
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setScrollViewOnScrollListener()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/weather/ui/view/OnScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/CircleView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/view/OnScrollHelper;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 12
    iget v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/view/OnScrollHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/weather/ui/view/OnScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsNeedChangeAlpha:Z

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/weather/ui/view/OnScrollHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;
    .param p1, "x1"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setDividerViewAlpha(I)V

    return-void
.end method

.method private setCircleViewProperty(I)V
    .locals 5
    .param p1, "scrollY"    # I

    .prologue
    const/4 v4, 0x0

    .line 179
    if-ltz p1, :cond_1

    .line 180
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshPanelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 181
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshPanelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 182
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    invoke-virtual {v0, v4}, Lcn/nubia/weather/ui/view/CircleView;->setAngle(F)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    if-gez p1, :cond_2

    int-to-float v0, p1

    const/high16 v1, -0x3e600000    # -20.0f

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshPanelLayout:Landroid/widget/LinearLayout;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 186
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshPanelLayout:Landroid/widget/LinearLayout;

    neg-int v1, p1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 187
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    mul-int/lit16 v1, p1, -0x168

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->REFRESH_DISTANCE:F

    iget v3, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/CircleView;->setAngle(F)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshPanelLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 191
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshPanelLayout:Landroid/widget/LinearLayout;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 192
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    if-nez v0, :cond_3

    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->REFRESH_DISTANCE:F

    neg-float v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    mul-int/lit16 v1, p1, -0x168

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->REFRESH_DISTANCE:F

    iget v3, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/CircleView;->setAngle(F)V

    .line 194
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    if-nez v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->REFRESH_DISTANCE:F

    neg-float v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    invoke-virtual {v0, v4}, Lcn/nubia/weather/ui/view/CircleView;->setAngle(F)V

    goto :goto_0
.end method

.method private setDividerViewAlpha(I)V
    .locals 7
    .param p1, "scrollY"    # I

    .prologue
    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v3, 0x43870000    # 270.0f

    .line 224
    int-to-float v0, p1

    const/high16 v1, 0x43a00000    # 320.0f

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 225
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDivideView:Landroid/view/View;

    int-to-float v1, p1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v6

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 228
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    int-to-float v1, p1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v6

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 230
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityBarLayout:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v6

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 244
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDivideView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 235
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDivideView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 240
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 241
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method private setState(I)V
    .locals 4
    .param p1, "scrollY"    # I

    .prologue
    const/4 v3, 0x0

    .line 155
    if-ltz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/CircleView;->stopAnimation()V

    .line 157
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;->pullDownState(I)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->REFRESH_DISTANCE:F

    neg-float v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;->pullDownState(I)V

    .line 171
    :cond_3
    if-gtz p1, :cond_1

    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->REFRESH_DISTANCE:F

    neg-float v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    invoke-interface {v0, v3}, Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;->pullDownState(I)V

    goto :goto_0
.end method

.method private setTextSize(I)V
    .locals 6
    .param p1, "scrollY"    # I

    .prologue
    const v2, 0x3f35c28f    # 0.71f

    const v5, 0x3e947ae2    # 0.29000002f

    const/high16 v4, 0x43a00000    # 320.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 208
    if-gez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 210
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 221
    :goto_0
    return-void

    .line 211
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    int-to-float v1, p1

    mul-float/2addr v1, v5

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v4

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 214
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    int-to-float v1, p1

    mul-float/2addr v1, v5

    iget v2, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v2, v4

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 218
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method

.method private setTextTransitionY(I)V
    .locals 3
    .param p1, "scrollY"    # I

    .prologue
    const/high16 v2, 0x43a00000    # 320.0f

    .line 200
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    int-to-float v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mCityTextView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsRefreshing:Z

    return v0
.end method

.method public onDrag(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setCircleViewProperty(I)V

    .line 141
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setState(I)V

    .line 146
    return-void
.end method

.method public onFling(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .prologue
    .line 137
    return-void
.end method

.method public setAnimAlpha(I)V
    .locals 5
    .param p1, "scrollY"    # I

    .prologue
    const/high16 v2, 0x43c80000    # 400.0f

    .line 116
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v1, :cond_1

    .line 117
    if-gez p1, :cond_2

    .line 118
    const/4 p1, 0x0

    .line 122
    :cond_0
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v0, v1, v2

    .line 123
    .local v0, "alpha":F
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setUpTranslationAlpha(F)V

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setDividerViewAlpha(I)V

    .line 126
    .end local v0    # "alpha":F
    :cond_1
    return-void

    .line 119
    :cond_2
    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-le p1, v1, :cond_0

    .line 120
    iget v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int p1, v1

    goto :goto_0
.end method

.method public setNeedChangeAnimAlpha(Z)V
    .locals 0
    .param p1, "isNeedChangeAlpha"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mIsNeedChangeAlpha:Z

    .line 152
    return-void
.end method

.method protected setScrollViewOnScrollListener()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    new-instance v1, Lcn/nubia/weather/ui/view/OnScrollHelper$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/view/OnScrollHelper$1;-><init>(Lcn/nubia/weather/ui/view/OnScrollHelper;)V

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->setOnScrollChangedListener(Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;)V

    .line 113
    return-void
.end method

.method public setStateListener(Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    .prologue
    .line 255
    iput-object p1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    .line 256
    return-void
.end method

.method public stopRefreshAnimation()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mStateListener:Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;->pullDownState(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/CircleView;->stopAnimation()V

    .line 262
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->secondRefreshBackAnimation()V

    .line 268
    return-void
.end method
