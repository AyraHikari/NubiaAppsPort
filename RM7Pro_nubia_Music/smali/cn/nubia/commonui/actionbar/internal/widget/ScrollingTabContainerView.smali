.class public Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;,
        Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;,
        Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;
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

.field private mTabClickListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;

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
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 83
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 85
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 87
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createTabLayout()Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    .line 88
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createTabView(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;

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
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;)V

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

.method private createTabView(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 289
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V

    .line 290
    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :goto_0
    return-object v0

    .line 295
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setFocusable(Z)V

    .line 297
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;

    if-nez v1, :cond_1

    .line 298
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;

    .line 300
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;

    invoke-direct {v1, p0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

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

    .prologue
    const/4 v5, 0x0

    .line 321
    invoke-direct {p0, p1, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createTabView(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;

    move-result-object v1

    .line 322
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    new-instance v2, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, p2, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;->notifyDataSetChanged()V

    .line 327
    :cond_0
    if-eqz p3, :cond_1

    .line 328
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setSelected(Z)V

    .line 330
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 333
    :cond_2
    return-void
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-direct {p0, p1, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->createTabView(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;

    move-result-object v1

    .line 307
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    new-instance v2, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;->notifyDataSetChanged()V

    .line 312
    :cond_0
    if-eqz p2, :cond_1

    .line 313
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setSelected(Z)V

    .line 315
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 318
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
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
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 235
    :cond_0
    if-nez p1, :cond_2

    .line 236
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 240
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 241
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

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
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

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
    .locals 2

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 228
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

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
    .locals 1
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
    check-cast p2, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;

    .line 368
    invoke-virtual {p2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->b()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->select()V

    .line 369
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 95
    if-ne v3, v6, :cond_2

    move v0, v1

    .line 96
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 98
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v4

    .line 99
    if-le v4, v1, :cond_4

    if-eq v3, v6, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_4

    .line 101
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_3

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 106
    :goto_1
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 111
    :goto_2
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 113
    if-nez v0, :cond_5

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v4, :cond_5

    .line 115
    :goto_3
    if-eqz v1, :cond_7

    .line 117
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measure(II)V

    .line 118
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_6

    .line 119
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 127
    :goto_4
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    .line 128
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 131
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 133
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 135
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 95
    goto :goto_0

    .line 104
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 108
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v1, v2

    .line 113
    goto :goto_3

    .line 121
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

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;->notifyDataSetChanged()V

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

    .prologue
    .line 346
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->removeViewAt(I)V

    .line 347
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;->notifyDataSetChanged()V

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

    .prologue
    .line 147
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 148
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

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

    .prologue
    const/4 v1, 0x0

    .line 180
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 181
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 182
    :goto_0
    if-ge v2, v3, :cond_2

    .line 183
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 184
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 185
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 182
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 191
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 193
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->a()V

    .line 337
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$a;->notifyDataSetChanged()V

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
