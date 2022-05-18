.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$PopupPresenterCallback;
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
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$1;

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 3
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 737
    instance-of v1, p1, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 738
    check-cast v1, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->close(Z)V

    .line 740
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getCallback()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 741
    .local v0, "cb":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    .line 742
    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V

    .line 744
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 728
    if-nez p1, :cond_0

    .line 732
    :goto_0
    return v2

    .line 730
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    move-object v1, p1

    check-cast v1, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 731
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getCallback()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 732
    .local v0, "cb":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
