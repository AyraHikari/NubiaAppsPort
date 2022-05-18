.class Lcom/android/calculator2/HistoryFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/HistoryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/android/calculator2/HistoryFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/calculator2/HistoryFragment$1;->this$0:Lcom/android/calculator2/HistoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment$1;->this$0:Lcom/android/calculator2/HistoryFragment;

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryFragment;->stopActionModeOrContextMenu()Z

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
