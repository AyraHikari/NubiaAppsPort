.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .prologue
    .line 1489
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->mWrapped:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .line 1491
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1502
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->mWrapped:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1494
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->mWrapped:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 1506
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->mWrapped:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 1507
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 1508
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1509
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1516
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1517
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 1519
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mAppCompatCallback:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    if-eqz v0, :cond_2

    .line 1520
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mAppCompatCallback:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatCallback;->onSupportActionModeFinished(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 1522
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 1523
    return-void

    .line 1510
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1512
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1498
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionModeCallbackWrapper;->mWrapped:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
