.class Lcn/nubia/video/commonui/app/e$h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/commonui/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/commonui/app/e;


# direct methods
.method public constructor <init>(Lcn/nubia/video/commonui/app/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/e$h;->a:Lcn/nubia/video/commonui/app/e;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    return v1

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e$h;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/e;->b(Lcn/nubia/video/commonui/app/e;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/e;->D(Landroid/widget/PopupWindow;)V

    return v1

    .line 15
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x52

    if-ne v0, v2, :cond_6

    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/video/commonui/app/e$h;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 19
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 20
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e$h;->a:Lcn/nubia/video/commonui/app/e;

    invoke-virtual {p1}, Lcn/nubia/video/commonui/app/e;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e$h;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/e;->b(Lcn/nubia/video/commonui/app/e;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/video/commonui/app/e;->D(Landroid/widget/PopupWindow;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
