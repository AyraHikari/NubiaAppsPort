.class Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;
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
    name = "HoneycombDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mSetIndicatorInfo:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 529
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 531
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 536
    .local v1, "context":Landroid/content/Context;
    :goto_0
    return-object v1

    .line 534
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 2

    .prologue
    .line 541
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 542
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb;->setActionBarDescription(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .line 558
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "themeImage"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb;->setActionBarUpIndicator(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .line 551
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 552
    return-void
.end method
