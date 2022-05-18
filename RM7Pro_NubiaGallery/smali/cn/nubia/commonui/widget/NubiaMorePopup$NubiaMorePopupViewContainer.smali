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

    .line 644
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 645
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 650
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 651
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 652
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 653
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 654
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 657
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 658
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 659
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    return v1

    .line 664
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 665
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 666
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 668
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    return v1

    .line 672
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 673
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x52

    if-ne v0, v2, :cond_6

    .line 674
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 675
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 677
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 679
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 685
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 686
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
