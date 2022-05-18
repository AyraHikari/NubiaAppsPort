.class public Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field final mWrapped:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x1

    .line 62
    :try_start_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 157
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 152
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 127
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 117
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 132
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 137
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 122
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method
