.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$1;

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$700(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$700(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
