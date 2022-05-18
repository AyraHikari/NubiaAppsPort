.class public abstract Landroid/support/v7/recyclerview/extensions/ListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private final mHelper:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V
    .locals 2
    .param p1    # Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    .local p1, "config":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 108
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    new-instance v1, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {v0, v1, p1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;-><init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mHelper:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    .line 109
    return-void
.end method

.method protected constructor <init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .locals 3
    .param p1    # Landroid/support/v7/util/DiffUtil$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$ItemCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    .local p1, "diffCallback":Landroid/support/v7/util/DiffUtil$ItemCallback;, "Landroid/support/v7/util/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 102
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    new-instance v1, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    invoke-direct {v2, p1}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;-><init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V

    .line 103
    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->build()Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;-><init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mHelper:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    .line 104
    return-void
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mHelper:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mHelper:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mHelper:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0, p1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 122
    return-void
.end method
