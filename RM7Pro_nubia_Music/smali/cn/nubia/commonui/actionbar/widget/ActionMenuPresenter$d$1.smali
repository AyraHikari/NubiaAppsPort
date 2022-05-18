.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;
.super Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field final synthetic b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;Landroid/view/View;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;

    iput-object p3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$200(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$200(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$300(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 623
    :goto_0
    return v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 623
    const/4 v0, 0x1

    goto :goto_0
.end method
