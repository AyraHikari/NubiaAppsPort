.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 596
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$200(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x0

    .line 603
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$200(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 609
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$300(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x0

    .line 622
    :goto_0
    return v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 622
    const/4 v0, 0x1

    goto :goto_0
.end method
