.class Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;
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
    name = "e"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;->a:Landroid/app/Activity;

    .line 570
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;)V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 574
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x101030b

    aput v3, v2, v4

    const v3, 0x10102ce

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 576
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 577
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 578
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 596
    :goto_0
    return v0

    .line 597
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 615
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 605
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 607
    :cond_0
    return-void
.end method
