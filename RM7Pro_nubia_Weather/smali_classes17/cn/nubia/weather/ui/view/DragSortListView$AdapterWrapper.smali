.class Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 625
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 626
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 627
    iput-object p2, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 629
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper$1;-><init>(Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;Lcn/nubia/weather/ui/view/DragSortListView;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 638
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 651
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 696
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 697
    check-cast v2, Lcn/nubia/weather/ui/view/DragSortItemView;

    .line 698
    .local v2, "v":Lcn/nubia/weather/ui/view/DragSortItemView;
    invoke-virtual {v2, v5}, Lcn/nubia/weather/ui/view/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 700
    .local v1, "oldChild":Landroid/view/View;
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-interface {v3, p1, v1, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, "child":Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 704
    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v2, v5}, Lcn/nubia/weather/ui/view/DragSortItemView;->removeViewAt(I)V

    .line 707
    :cond_0
    invoke-virtual {v2, v0}, Lcn/nubia/weather/ui/view/DragSortItemView;->addView(Landroid/view/View;)V

    .line 723
    .end local v1    # "oldChild":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$200(Lcn/nubia/weather/ui/view/DragSortListView;ILandroid/view/View;Z)V

    .line 725
    return-object v2

    .line 710
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "v":Lcn/nubia/weather/ui/view/DragSortItemView;
    :cond_2
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-interface {v3, p1, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 711
    .restart local v0    # "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    .line 712
    new-instance v2, Lcn/nubia/weather/ui/view/DragSortItemViewCheckable;

    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/weather/ui/view/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    .line 716
    .restart local v2    # "v":Lcn/nubia/weather/ui/view/DragSortItemView;
    :goto_1
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/view/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    invoke-virtual {v2, v0}, Lcn/nubia/weather/ui/view/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 714
    .end local v2    # "v":Lcn/nubia/weather/ui/view/DragSortItemView;
    :cond_3
    new-instance v2, Lcn/nubia/weather/ui/view/DragSortItemView;

    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/weather/ui/view/DragSortItemView;-><init>(Landroid/content/Context;)V

    .restart local v2    # "v":Lcn/nubia/weather/ui/view/DragSortItemView;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
