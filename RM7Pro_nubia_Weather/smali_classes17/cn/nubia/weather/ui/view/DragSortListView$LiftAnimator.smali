.class Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;
.super Lcn/nubia/weather/ui/view/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1187
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 1188
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView$SmoothAnimator;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;FI)V

    .line 1189
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1194
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    .line 1195
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1199
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$100(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->cancel()V

    .line 1207
    :goto_0
    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$302(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    .line 1204
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$600(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v2}, Lcn/nubia/weather/ui/view/DragSortListView;->access$300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1205
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$700(Lcn/nubia/weather/ui/view/DragSortListView;Z)V

    goto :goto_0
.end method
