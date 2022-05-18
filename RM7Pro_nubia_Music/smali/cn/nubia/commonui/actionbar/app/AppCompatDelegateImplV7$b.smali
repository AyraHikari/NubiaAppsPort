.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

.field private b:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V
    .locals 0

    .prologue
    .line 1460
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->b:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .line 1462
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->b:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->b:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->b:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 1478
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 1479
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1480
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1487
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 1490
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    if-eqz v0, :cond_2

    .line 1491
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatCallback;->onSupportActionModeFinished(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 1493
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 1494
    return-void

    .line 1481
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1483
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;->b:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
