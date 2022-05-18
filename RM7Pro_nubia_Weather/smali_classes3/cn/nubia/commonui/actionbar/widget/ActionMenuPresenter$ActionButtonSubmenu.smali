.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 691
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 692
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcn/nubia/commonui/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 694
    iput-object p3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .line 696
    invoke-virtual {p3}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    check-cast v9, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 697
    .local v9, "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    invoke-virtual {v9}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$500(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$600(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 702
    :cond_0
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 704
    const/4 v10, 0x0

    .line 705
    .local v10, "preserveIconSpacing":Z
    invoke-virtual {p3}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->size()I

    move-result v7

    .line 706
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 707
    invoke-virtual {p3, v8}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 708
    .local v6, "childItem":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 709
    const/4 v10, 0x1

    .line 713
    .end local v6    # "childItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v10}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 714
    return-void

    .line 699
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v10    # "preserveIconSpacing":Z
    :cond_2
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$500(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 706
    .restart local v6    # "childItem":Landroid/view/MenuItem;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    .restart local v10    # "preserveIconSpacing":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 718
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 719
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$702(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 720
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 721
    return-void
.end method
