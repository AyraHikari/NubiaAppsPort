.class public abstract Lcn/nubia/music/adapter/CustomRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "CustomRecycleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcn/nubia/music/adapter/CustomViewHolderHelper;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static final TYPE_BODY:I = 0x2

.field private static final TYPE_EMPTY:I = 0x1

.field private static final TYPE_HEADER:I


# instance fields
.field public mCheckedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    .line 29
    iput-object p1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mLayoutId:I

    .line 31
    return-void
.end method


# virtual methods
.method public addEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mEmptyView:Landroid/view/View;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->notifyItemInserted(I)V

    .line 41
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mHeaderView:Landroid/view/View;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->notifyItemInserted(I)V

    .line 36
    return-void
.end method

.method public abstract displayItemContent(Lcn/nubia/music/adapter/CustomViewHolderHelper;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/adapter/CustomViewHolderHelper;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getCheckedItemCount(Z)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckedItemIds(Z)[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 66
    new-array v2, v0, [J

    .line 67
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 69
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 73
    goto :goto_0
.end method

.method public getCheckedModels(Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    return-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 145
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 148
    new-instance v1, Lcn/nubia/music/adapter/CustomRecycleAdapter$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter$1;-><init>(Lcn/nubia/music/adapter/CustomRecycleAdapter;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/GridLayoutManager$b;)V

    .line 162
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcn/nubia/music/adapter/CustomViewHolderHelper;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->onBindViewHolder(Lcn/nubia/music/adapter/CustomViewHolderHelper;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/music/adapter/CustomViewHolderHelper;I)V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0, p2}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0, p2}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 125
    add-int/lit8 p2, p2, -0x1

    .line 127
    :cond_2
    iget-object v0, p1, Lcn/nubia/music/adapter/CustomViewHolderHelper;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p1, Lcn/nubia/music/adapter/CustomViewHolderHelper;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p1, Lcn/nubia/music/adapter/CustomViewHolderHelper;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->displayItemContent(Lcn/nubia/music/adapter/CustomViewHolderHelper;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->onItemClick(Landroid/view/View;I)V

    .line 185
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/music/adapter/CustomViewHolderHelper;
    .locals 3

    .prologue
    .line 108
    if-nez p2, :cond_0

    .line 109
    new-instance v0, Lcn/nubia/music/adapter/CustomViewHolderHelper;

    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mHeaderView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;-><init>(Landroid/view/View;)V

    .line 114
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 111
    new-instance v0, Lcn/nubia/music/adapter/CustomViewHolderHelper;

    iget-object v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mEmptyView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 114
    new-instance v0, Lcn/nubia/music/adapter/CustomViewHolderHelper;

    invoke-direct {v0, v1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public abstract onItemClick(Landroid/view/View;I)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->onLongItemClick(Landroid/view/View;I)V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onLongItemClick(Landroid/view/View;I)V
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {p0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
