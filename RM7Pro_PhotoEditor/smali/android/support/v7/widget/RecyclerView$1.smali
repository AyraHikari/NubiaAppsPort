.class Landroid/support/v7/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_1
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    :cond_3
    :goto_0
    return-void
.end method
