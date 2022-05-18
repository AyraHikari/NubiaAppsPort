.class public Lcn/nubia/notepad/view/DownSynchroniozeListView;
.super Landroid/widget/ListView;
.source "DownSynchroniozeListView.java"


# instance fields
.field private mIsSearch:Z

.field private mLastCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/view/DownSynchroniozeListView;->mIsSearch:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/view/DownSynchroniozeListView;->mIsSearch:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/view/DownSynchroniozeListView;->mIsSearch:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->isStackFromBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/notepad/view/DownSynchroniozeListView;->mIsSearch:Z

    if-eqz v1, :cond_1

    .line 32
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 37
    .local v0, "curCount":I
    iget v1, p0, Lcn/nubia/notepad/view/DownSynchroniozeListView;->mLastCount:I

    if-le v0, v1, :cond_2

    .line 38
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setSelection(I)V

    .line 39
    iput v0, p0, Lcn/nubia/notepad/view/DownSynchroniozeListView;->mLastCount:I

    .line 41
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "search"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/nubia/notepad/view/DownSynchroniozeListView;->mIsSearch:Z

    .line 27
    return-void
.end method
