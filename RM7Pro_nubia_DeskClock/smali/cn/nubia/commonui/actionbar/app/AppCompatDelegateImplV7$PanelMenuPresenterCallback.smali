.class final Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 1497
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;

    .prologue
    .line 1497
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 6
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1500
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getRootMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v2

    .line 1501
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_2

    move v0, v3

    .line 1502
    .local v0, "isSubMenu":Z
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    if-eqz v0, :cond_0

    move-object p1, v2

    .end local p1    # "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    :cond_0
    invoke-static {v4, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$600(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1503
    .local v1, "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-eqz v1, :cond_1

    .line 1504
    if-eqz v0, :cond_3

    .line 1505
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget v5, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-static {v4, v5, v1, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$700(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1506
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-static {v4, v1, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$800(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1513
    :cond_1
    :goto_1
    return-void

    .line 1501
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .restart local p1    # "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1510
    .end local p1    # "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .restart local v0    # "isSubMenu":Z
    .restart local v1    # "panel":Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-static {v3, v1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$800(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 1517
    if-nez p1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-boolean v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1519
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1520
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1523
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
