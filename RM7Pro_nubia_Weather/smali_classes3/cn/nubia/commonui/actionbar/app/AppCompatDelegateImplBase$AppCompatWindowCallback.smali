.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;
.super Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppCompatWindowCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V
    .locals 0
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 232
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    .line 233
    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 234
    return-void
.end method

.method private bypassPrepareOptionsPanelIfNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 314
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 322
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 238
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 286
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 246
    if-nez p1, :cond_0

    instance-of v0, p2, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 278
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 300
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->onPanelClosed(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 256
    if-nez p1, :cond_1

    instance-of v1, p3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->bypassPrepareOptionsPanelIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 265
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 267
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 273
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method
