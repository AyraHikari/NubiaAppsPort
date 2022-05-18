.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p2, "x1"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$1;

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

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
    .line 516
    if-lez p4, :cond_0

    .line 517
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2500(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->getLastVisiblePosition()I

    move-result v0

    .line 518
    .local v0, "lastItemId":I
    add-int/lit8 v1, v0, 0x1

    if-ne v1, p4, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2600(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .line 519
    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1500(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2602(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Z)Z

    .line 521
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    .line 525
    .end local v0    # "lastItemId":I
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 529
    return-void
.end method
