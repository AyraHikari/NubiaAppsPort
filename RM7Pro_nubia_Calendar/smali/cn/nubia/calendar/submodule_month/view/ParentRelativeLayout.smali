.class public Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ParentRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;,
        Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;,
        Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;
    }
.end annotation


# instance fields
.field public lineNum:I

.field private mBottomPanel:Landroid/widget/RelativeLayout;

.field private mBottomTranslationDis:F

.field private mBottomTranslationY:F

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

.field private mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

.field private mOnRefreshPageListener:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

.field private mOtherViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

.field private mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

.field private mTopPagerTransDistance:F

.field private mTopViewPagerTranslationY:F

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v0}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 31
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    .line 209
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mOnRefreshPageListener:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

    .line 48
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mDensity:F

    .line 50
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mDensity:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mTopViewPagerTranslationY:F

    .line 52
    const/high16 v0, 0x42960000    # 75.0f

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationY:F

    .line 53
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mOtherViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationDis:F

    return v0
.end method

.method static synthetic access$1102(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationDis:F

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationY:F

    return v0
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mOnRefreshPageListener:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mDensity:F

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mTopViewPagerTranslationY:F

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mTopPagerTransDistance:F

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/util/MonthUtil;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    return-object v0
.end method


# virtual methods
.method public getmBottomPanel()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomPanel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    const v1, 0x7f11006b

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomPanel:Landroid/widget/RelativeLayout;

    .line 75
    const v1, 0x7f11006a

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    .line 76
    const v1, 0x7f110069

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mOtherViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    .line 78
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mTopViewPagerTranslationY:F

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setTranslationY(F)V

    .line 79
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mOtherViewPager:Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mTopViewPagerTranslationY:F

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setTranslationY(F)V

    .line 81
    new-instance v1, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomPanel:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2, p0, v3}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    .line 83
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomPanel:Landroid/widget/RelativeLayout;

    const v2, 0x7f11006d

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/MyListView;

    .line 85
    .local v0, "listView":Lcn/nubia/calendar/submodule_month/view/MyListView;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->setBottomListView(Lcn/nubia/calendar/submodule_month/view/MyListView;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    new-instance v2, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;

    invoke-direct {v2, p0, v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;-><init>(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$1;)V

    .line 87
    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->setOnDragChangeListener(Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;)V

    .line 88
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mExpanTopViewPager:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    new-instance v2, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;

    invoke-direct {v2, p0, v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;-><init>(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$1;)V

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setOnScrollerCallBack(Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;)V

    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 90
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public setBottomTranslationY(Landroid/text/format/Time;)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v1, v2}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v1

    .line 56
    invoke-virtual {v0, p1, v1}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    .line 59
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 60
    const v0, 0x43878000    # 271.0f

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationDis:F

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationY:F

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationDis:F

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->setBottomTranslation(FF)V

    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomPanel:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationY:F

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationDis:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 70
    return-void

    .line 61
    :cond_1
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 62
    const/high16 v0, 0x435c0000    # 220.0f

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationDis:F

    goto :goto_0

    .line 63
    :cond_2
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 64
    const/high16 v0, 0x43290000    # 169.0f

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationDis:F

    goto :goto_0
.end method

.method public setDragHelperBottomTransation(F)V
    .locals 2
    .param p1, "translationHeight"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mPagerDragHelper:Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mBottomTranslationY:F

    invoke-virtual {v0, v1, p1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->setBottomTranslation(FF)V

    .line 99
    return-void
.end method

.method public setOnRefreshPageListener(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;)V
    .locals 0
    .param p1, "onRefreshPageListener"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

    .prologue
    .line 206
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mOnRefreshPageListener:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

    .line 207
    return-void
.end method

.method public setTanHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 115
    neg-float v0, p1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mTopPagerTransDistance:F

    .line 116
    return-void
.end method

.method public setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 0
    .param p1, "workingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 35
    return-void
.end method
