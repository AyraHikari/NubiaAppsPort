.class Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

.field final synthetic val$this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    .prologue
    .line 629
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper$1;->this$1:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    iput-object p2, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper$1;->val$this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper$1;->this$1:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 632
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper$1;->this$1:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 636
    return-void
.end method
