.class public Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;
.super Lcn/nubia/commonui/actionbar/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;,
        Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$c;,
        Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;,
        Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;
    }
.end annotation


# instance fields
.field private mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mListMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarMenuPrepared:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBar;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$2;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuClicker:Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;

    .line 79
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Z)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 80
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;

    invoke-virtual {p3}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 81
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuClicker:Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setOnMenuItemClickListener(Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 85
    iput-object p3, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mWindow:Landroid/view/Window;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->getListMenuView(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private ensureListMenuPresenter(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 520
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 521
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 523
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 524
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 525
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 526
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 529
    sget v3, Lcn/nubia/commonui/R$attr;->panelMenuListTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 530
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 531
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 536
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 537
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 540
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    sget v2, Lcn/nubia/commonui/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    .line 541
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$c;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 542
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 544
    :cond_0
    return-void

    .line 533
    :cond_1
    sget v1, Lcn/nubia/commonui/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method private getListMenuView(Landroid/view/Menu;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 507
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->ensureListMenuPresenter(Landroid/view/Menu;)V

    .line 509
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-object v0

    .line 513
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 514
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mListMenuPresenter:Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 576
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;

    invoke-direct {v1, p0, v3}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;)V

    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;

    invoke-direct {v2, p0, v3}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;)V

    invoke-interface {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 581
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    return-void
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;I)V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;IZ)V
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->collapseActionView()V

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3

    .prologue
    .line 495
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_1

    .line 504
    :cond_0
    return-void

    .line 498
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 500
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 501
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 502
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 501
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getActionBarContextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedTab()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSplitActionBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 425
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 440
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public newTab()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 474
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->openOptionsMenu()Z

    .line 477
    :cond_0
    return v1
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 455
    instance-of v2, v1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-object v2, v0

    .line 456
    :goto_0
    if-eqz v2, :cond_0

    .line 457
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 460
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 461
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 462
    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_2
    if-eqz v2, :cond_3

    .line 467
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 470
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 455
    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 467
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v0
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method public removeTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V
    .locals 2

    .prologue
    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 94
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    .line 95
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 286
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 287
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1

    .prologue
    .line 265
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 266
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 271
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 272
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 296
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 297
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 281
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 282
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 291
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 292
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 276
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 277
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 159
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 199
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 184
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setIcon(I)V

    .line 124
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/app/a;

    invoke-direct {v1, p2}, Lcn/nubia/commonui/actionbar/internal/app/a;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 214
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setLogo(I)V

    .line 134
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 330
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 226
    return-void

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public setSubtitle(I)V
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 261
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 245
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 418
    return-void
.end method
