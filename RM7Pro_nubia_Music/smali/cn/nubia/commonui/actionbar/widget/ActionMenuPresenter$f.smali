.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$1;)V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 2

    .prologue
    .line 738
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 739
    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->close(Z)V

    .line 741
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getCallback()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_1

    .line 743
    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V

    .line 745
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 729
    if-nez p1, :cond_0

    .line 733
    :goto_0
    return v1

    .line 731
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    move-object v0, p1

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 732
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getCallback()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
