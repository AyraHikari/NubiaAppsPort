.class final Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1619
    iput p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    .line 1621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1622
    return-void
.end method


# virtual methods
.method a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    .locals 3

    .prologue
    .line 1686
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1697
    :goto_0
    return-object v0

    .line 1688
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_1

    .line 1689
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Landroid/content/Context;

    sget v2, Lcn/nubia/commonui/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    .line 1691
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 1692
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 1695
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1642
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1643
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1644
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1647
    sget v2, Lcn/nubia/commonui/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1648
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 1649
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1653
    :cond_0
    sget v2, Lcn/nubia/commonui/R$attr;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1654
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 1655
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1660
    :goto_0
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1661
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1663
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Landroid/content/Context;

    .line 1665
    sget-object v1, Lcn/nubia/commonui/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1666
    sget v1, Lcn/nubia/commonui/R$styleable;->Theme_panelBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->b:I

    .line 1668
    sget v1, Lcn/nubia/commonui/R$styleable;->Theme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->f:I

    .line 1670
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1671
    return-void

    .line 1657
    :cond_1
    sget v0, Lcn/nubia/commonui/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 1674
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 1683
    :cond_0
    :goto_0
    return-void

    .line 1676
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 1677
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 1679
    :cond_2
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 1680
    if-eqz p1, :cond_0

    .line 1681
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1625
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 1628
    :cond_0
    :goto_0
    return v0

    .line 1626
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1628
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
