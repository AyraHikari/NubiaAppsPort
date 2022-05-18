.class public Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

.field protected final mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 83
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 84
    .local v0, "abp":Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 85
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 87
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createTabLayout()Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    .line 88
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createTabView(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    .locals 4

    .prologue
    .line 211
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcn/nubia/commonui/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    .local v0, "spinner":Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setOnItemClickListenerInt(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;)V

    .line 216
    return-object v0
.end method

.method private createTabLayout()Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
    .locals 4

    .prologue
    .line 201
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcn/nubia/commonui/R$attr;->actionBarTabBarStyle:I

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    .local v0, "tabLayout":Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    .line 204
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setGravity(I)V

    .line 205
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-object v0
.end method

.method private createTabView(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 289
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V

    .line 290
    .local v0, "tabView":Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :goto_0
    return-object v0

    .line 295
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 297
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 298
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 300
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-nez v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createSpinner()Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    .line 156
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 164
    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 166
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return v4

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 321
    invoke-direct {p0, p1, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createTabView(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 322
    .local v0, "tabView":Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    new-instance v2, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 327
    :cond_0
    if-eqz p3, :cond_1

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 330
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 333
    :cond_2
    return-void
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-direct {p0, p1, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createTabView(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 307
    .local v0, "tabView":Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    new-instance v2, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 312
    :cond_0
    if-eqz p2, :cond_1

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 315
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 318
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 257
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v1, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    :cond_0
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 268
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    .line 232
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 235
    :cond_0
    if-nez p1, :cond_2

    .line 236
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 240
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 241
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 243
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 244
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 245
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 254
    :goto_0
    return-void

    .line 247
    .end local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 248
    .restart local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 250
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 251
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 252
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 274
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 227
    .local v0, "abp":Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 228
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 229
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 283
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    :cond_0
    return-void
.end method

.method public onItemClick(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "parent":Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;, "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat<*>;"
    move-object v0, p2

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    .line 368
    .local v0, "tabView":Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->getTab()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->select()V

    .line 369
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 95
    .local v5, "widthMode":I
    if-ne v5, v10, :cond_2

    move v2, v6

    .line 96
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 98
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v8}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    .line 99
    .local v1, "childCount":I
    if-le v1, v6, :cond_4

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_4

    .line 101
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_3

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 106
    :goto_1
    iget v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 111
    :goto_2
    iget v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 113
    if-nez v2, :cond_5

    iget-boolean v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_5

    move v0, v6

    .line 115
    .local v0, "canCollapse":Z
    :goto_3
    if-eqz v0, :cond_7

    .line 117
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v6, v7, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measure(II)V

    .line 118
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v6}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 119
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 127
    :goto_4
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 128
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 131
    .local v3, "newWidth":I
    if-eqz v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 133
    iget v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 135
    :cond_1
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_2
    move v2, v7

    .line 95
    goto :goto_0

    .line 104
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 108
    :cond_4
    const/4 v8, -0x1

    iput v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v0, v7

    .line 113
    goto :goto_3

    .line 121
    .restart local v0    # "canCollapse":Z
    :cond_6
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 124
    :cond_7
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->removeAllViews()V

    .line 357
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 360
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 363
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->removeViewAt(I)V

    .line 347
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 353
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 148
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 196
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 197
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 198
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 180
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 181
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    .line 182
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 183
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v4, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 185
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 186
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 190
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    .line 191
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v4, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 193
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 337
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 340
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 343
    :cond_1
    return-void
.end method
