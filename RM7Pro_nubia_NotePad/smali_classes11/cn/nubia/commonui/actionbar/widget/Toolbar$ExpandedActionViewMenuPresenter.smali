.class Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

.field mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1911
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Lcn/nubia/commonui/actionbar/widget/Toolbar$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/widget/Toolbar;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/widget/Toolbar$1;

    .prologue
    .line 1911
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2002
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2006
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2007
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$300(Lcn/nubia/commonui/actionbar/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2008
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iput-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2010
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$500(Lcn/nubia/commonui/actionbar/widget/Toolbar;Z)V

    .line 2011
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 2012
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->requestLayout()V

    .line 2013
    invoke-virtual {p2, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2015
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x1

    .line 1973
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$200(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V

    .line 1974
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$300(Lcn/nubia/commonui/actionbar/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    if-eq v1, v2, :cond_0

    .line 1975
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$300(Lcn/nubia/commonui/actionbar/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1977
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1978
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 1979
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    if-eq v1, v2, :cond_1

    .line 1980
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1981
    .local v0, "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$400(Lcn/nubia/commonui/actionbar/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 1982
    const/4 v1, 0x2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1983
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1984
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v2, v2, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1987
    .end local v0    # "lp":Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v1, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$500(Lcn/nubia/commonui/actionbar/widget/Toolbar;Z)V

    .line 1988
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->requestLayout()V

    .line 1989
    invoke-virtual {p2, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1991
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    .line 1992
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1995
    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1968
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2020
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1926
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 1918
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    .line 1921
    :cond_0
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 1922
    return-void
.end method

.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1964
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2030
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2025
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1959
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1955
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1932
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1933
    const/4 v1, 0x0

    .line 1935
    .local v1, "found":Z
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1936
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1937
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1938
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1939
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1940
    const/4 v1, 0x1

    .line 1946
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1948
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    .line 1951
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1937
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
