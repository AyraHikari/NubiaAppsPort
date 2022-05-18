.class public Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;
.super Lcn/nubia/commonui/actionbar/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field private mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    .param p3, "callback"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;
    .param p4, "isFocusable"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/view/ActionMode;-><init>()V

    .line 49
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .line 51
    iput-object p3, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .line 53
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 55
    iput-boolean p4, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mFocusable:Z

    .line 56
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mFinished:Z

    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 113
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    .line 103
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mFocusable:Z

    return v0
.end method

.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 146
    return-void
.end method

.method public onCloseSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 158
    return-void
.end method

.method public onMenuItemSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->invalidate()V

    .line 162
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 163
    return-void
.end method

.method public onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x1

    .line 149
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return v2

    .line 153
    :cond_0
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCloseMenuVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setCloseMenuVisibility(I)V

    .line 98
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 92
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 81
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 82
    return-void
.end method
