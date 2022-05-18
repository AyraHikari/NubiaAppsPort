.class Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "NubiaMorePopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NubiaMorePopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NubiaMorePopupViewContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .line 303
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 304
    const-string v0, "nubia_more_popup_menu_container"

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 306
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_5

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 313
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 335
    :cond_1
    :goto_0
    return v1

    .line 316
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 317
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 318
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 319
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 324
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 325
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 327
    iget-object v2, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$500(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 328
    iget-object v2, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$400(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 333
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 335
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method
