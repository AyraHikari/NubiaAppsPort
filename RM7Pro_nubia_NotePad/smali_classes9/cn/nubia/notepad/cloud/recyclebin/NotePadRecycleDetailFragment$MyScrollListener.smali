.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p2, "x1"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$1;

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 478
    if-lez p4, :cond_0

    .line 479
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1800(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/view/RecycleExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/view/RecycleExpandableListView;->getLastVisiblePosition()I

    move-result v0

    .line 480
    .local v0, "lastItemId":I
    add-int/lit8 v1, v0, 0x1

    if-ne v1, p4, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1000(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1902(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Z)Z

    .line 482
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2000(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    .line 486
    .end local v0    # "lastItemId":I
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 490
    return-void
.end method
