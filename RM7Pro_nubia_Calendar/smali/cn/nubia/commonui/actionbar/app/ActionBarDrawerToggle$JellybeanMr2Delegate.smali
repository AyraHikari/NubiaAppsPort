.class Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr2Delegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    .line 570
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 583
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 585
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 590
    .local v1, "context":Landroid/content/Context;
    :goto_0
    return-object v1

    .line 588
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 574
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x101030b

    aput v5, v4, v6

    const v5, 0x10102ce

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 576
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 577
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 578
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 2

    .prologue
    .line 595
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 596
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 596
    :goto_0
    return v1

    .line 597
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 611
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 612
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 615
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 602
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 603
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 605
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 607
    :cond_0
    return-void
.end method
