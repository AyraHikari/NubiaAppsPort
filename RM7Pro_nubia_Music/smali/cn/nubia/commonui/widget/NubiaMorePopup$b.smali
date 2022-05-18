.class Lcn/nubia/commonui/widget/NubiaMorePopup$b;
.super Landroid/widget/FrameLayout;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 674
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 675
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 679
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 680
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 682
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 683
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 686
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 687
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 688
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 689
    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 693
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 694
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 695
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 696
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 697
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 701
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 702
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_6

    .line 703
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 704
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 706
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 708
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    .line 717
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
