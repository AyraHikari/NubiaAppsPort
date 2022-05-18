.class public Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;
.super Ljava/lang/Object;
.source "ActionModeCallback.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomModeView:Landroid/view/View;

.field private mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

.field private mSelectedAllText:Landroid/widget/TextView;

.field private mSelectedNumText:Landroid/widget/TextView;

.field private mSumDefault:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mSumDefault:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->selectAllOrNone()V

    return-void
.end method

.method private selectAllOrNone()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    invoke-interface {v0}, Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;->selectAllOrNone()V

    .line 74
    :cond_0
    return-void
.end method

.method private setCustomView(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mContext:Landroid/content/Context;

    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mCustomModeView:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mCustomModeView:Landroid/view/View;

    const v1, 0x7f0f00e9

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mSelectedAllText:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mSelectedAllText:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback$1;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback$1;-><init>(Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mCustomModeView:Landroid/view/View;

    const v1, 0x7f0f00e8

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mSelectedNumText:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mCustomModeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->setCloseMenuVisibility(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    invoke-interface {v0, p2}, Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;->onActionItemClicked(Landroid/view/MenuItem;)V

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 34
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->setCustomView(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    invoke-interface {v0, p2}, Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;->onCreateActionMode(Landroid/view/Menu;)V

    .line 39
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    invoke-interface {v0}, Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;->onDestroyActionMode()V

    .line 89
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mListener:Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;

    invoke-interface {v0}, Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;->onPrepareActionMode()V

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSelectedAllText()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mSelectedAllText:Landroid/widget/TextView;

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    return-void
.end method

.method public setSelectedNotAllText()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mSelectedAllText:Landroid/widget/TextView;

    const v1, 0x7f0a00e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    return-void
.end method

.method public setSelectedNumText(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mSelectedNumText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0039

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
