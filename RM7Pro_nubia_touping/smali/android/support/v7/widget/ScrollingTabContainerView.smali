.class public Landroid/support/v7/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

.field mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/view/ViewPropertyAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 85
    invoke-static {p1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v0

    .line 86
    .local v0, "abp":Landroid/support/v7/view/ActionBarPolicy;
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 87
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 89
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabLayout()Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 90
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    return-object v0
.end method

.method private createTabLayout()Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarTabBarStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    .local v0, "tabLayout":Landroid/support/v7/widget/LinearLayoutCompat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    .line 206
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 207
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

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
    .locals 4

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 158
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 164
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 168
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return v4

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 324
    invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 325
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 330
    :cond_0
    if-eqz p3, :cond_1

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 333
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 336
    :cond_2
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 309
    invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 310
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 315
    :cond_0
    if-eqz p2, :cond_1

    .line 316
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 318
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 321
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 259
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    :cond_0
    new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 271
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    .line 234
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 237
    :cond_0
    if-nez p1, :cond_2

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 242
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 243
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 245
    sget-object v1, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 246
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 256
    :goto_0
    return-void

    .line 249
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 250
    .restart local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 252
    sget-object v1, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 253
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    .line 292
    new-instance v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/support/v7/app/ActionBar$Tab;Z)V

    .line 293
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 300
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 301
    new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    .line 303
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 277
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 281
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v0

    .line 229
    .local v0, "abp":Landroid/support/v7/view/ActionBarPolicy;
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 230
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 231
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 286
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 289
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    .line 371
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar$Tab;->select()V

    .line 372
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

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 97
    .local v5, "widthMode":I
    if-ne v5, v10, :cond_2

    move v2, v6

    .line 98
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 100
    iget-object v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    .line 101
    .local v1, "childCount":I
    if-le v1, v6, :cond_4

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_4

    .line 103
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_3

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 108
    :goto_1
    iget v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 113
    :goto_2
    iget v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 115
    if-nez v2, :cond_5

    iget-boolean v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_5

    move v0, v6

    .line 117
    .local v0, "canCollapse":Z
    :goto_3
    if-eqz v0, :cond_7

    .line 119
    iget-object v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v6, v7, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measure(II)V

    .line 120
    iget-object v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 121
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performCollapse()V

    .line 129
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 130
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 131
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 133
    .local v3, "newWidth":I
    if-eqz v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 135
    iget v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 137
    :cond_1
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_2
    move v2, v7

    .line 97
    goto :goto_0

    .line 106
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 110
    :cond_4
    const/4 v8, -0x1

    iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v0, v7

    .line 115
    goto :goto_3

    .line 123
    .restart local v0    # "canCollapse":Z
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 126
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->removeAllViews()V

    .line 360
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 363
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 366
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->removeViewAt(I)V

    .line 350
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 353
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 356
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 150
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 198
    iput p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 199
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 200
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 182
    iput p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 183
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    .line 184
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 185
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 187
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 188
    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 192
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    .line 193
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 195
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->update()V

    .line 340
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 343
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 346
    :cond_1
    return-void
.end method
