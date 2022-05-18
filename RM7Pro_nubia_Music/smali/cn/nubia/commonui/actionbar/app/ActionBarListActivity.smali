.class public Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "ActionBarListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mHandler:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mFinishedStart:Z

    .line 27
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$1;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$2;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_list_content_simple:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->ensureList()V

    .line 100
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onContentChanged()V

    .line 46
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    .line 47
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mFinishedStart:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mFinishedStart:Z

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 138
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->ensureList()V

    .line 128
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->ensureList()V

    .line 66
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 67
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 79
    return-void
.end method
