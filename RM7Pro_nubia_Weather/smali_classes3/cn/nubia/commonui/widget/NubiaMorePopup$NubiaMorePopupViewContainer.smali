.class Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NubiaMorePopupViewContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 635
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 636
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 637
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 641
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 642
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 643
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 644
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    if-nez v4, :cond_1

    .line 645
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 670
    :cond_0
    :goto_0
    return v3

    .line 648
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 649
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 650
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 651
    .local v2, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v2, :cond_0

    .line 652
    invoke-virtual {v2, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 655
    .end local v2    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 656
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 657
    .restart local v2    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 658
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 659
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v5}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 663
    .end local v2    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 664
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_6

    .line 665
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 666
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 668
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 670
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 676
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    .line 679
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
