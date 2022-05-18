.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field private b:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 692
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 693
    const/4 v3, 0x0

    sget v5, Lcn/nubia/commonui/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 695
    iput-object p3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .line 697
    invoke-virtual {p3}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 698
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$500(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$600(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->setAnchorView(Landroid/view/View;)V

    .line 703
    :cond_0
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 706
    invoke-virtual {p3}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    move v0, v4

    .line 707
    :goto_1
    if-ge v0, v1, :cond_1

    .line 708
    invoke-virtual {p3, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 709
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 710
    const/4 v4, 0x1

    .line 714
    :cond_1
    invoke-virtual {p0, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->setForceShowIcon(Z)V

    .line 715
    return-void

    .line 700
    :cond_2
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$500(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 707
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 719
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 720
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$702(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;

    .line 721
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$a;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 722
    return-void
.end method
