.class Lcn/nubia/weather/ui/view/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
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
    .line 269
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$1;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1
    .param p1, "w"    # F
    .param p2, "t"    # J

    .prologue
    .line 272
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$1;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$000(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
