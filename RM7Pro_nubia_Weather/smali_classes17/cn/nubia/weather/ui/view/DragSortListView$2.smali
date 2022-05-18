.class Lcn/nubia/weather/ui/view/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/view/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 533
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$2;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$2;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$100(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$2;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->cancelDrag()V

    .line 538
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView$2;->cancel()V

    .line 543
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView$2;->cancel()V

    .line 548
    return-void
.end method
