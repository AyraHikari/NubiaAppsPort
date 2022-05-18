.class Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;
.super Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;->a:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    .line 294
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 295
    return-void
.end method


# virtual methods
.method public getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;->a:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$000(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;->a:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$000(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 308
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;->a:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$100(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;->a:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$100(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;->a:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;->access$200(Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 312
    :cond_0
    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItemView$a;->getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->dismiss()V

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
