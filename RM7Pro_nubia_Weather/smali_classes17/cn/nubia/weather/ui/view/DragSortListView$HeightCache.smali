.class Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeightCache"
.end annotation


# instance fields
.field private mMap:Landroid/util/SparseIntArray;

.field private mMaxSize:I

.field private mOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 836
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    .line 839
    iput p2, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMaxSize:I

    .line 840
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 846
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 847
    .local v0, "currHeight":I
    if-eq v0, p2, :cond_1

    .line 848
    if-ne v0, v2, :cond_2

    .line 849
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMaxSize:I

    if-ne v1, v2, :cond_0

    .line 851
    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 857
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 858
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_1
    return-void

    .line 855
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 868
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    return-void
.end method

.method public get(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 863
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method
