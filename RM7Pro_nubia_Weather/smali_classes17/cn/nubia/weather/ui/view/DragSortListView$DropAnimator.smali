.class Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;
.super Lcn/nubia/weather/ui/view/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1220
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 1221
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView$SmoothAnimator;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;FI)V

    .line 1222
    return-void
.end method

.method private getTargetY()I
    .locals 6

    .prologue
    .line 1234
    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1235
    .local v0, "first":I
    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1000(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 1236
    .local v1, "otherAdjust":I
    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mDropPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1237
    .local v3, "v":Landroid/view/View;
    const/4 v2, -0x1

    .line 1238
    .local v2, "targetY":I
    if-eqz v3, :cond_2

    .line 1239
    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->srcPos:I

    if-ne v4, v5, :cond_0

    .line 1240
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1253
    :goto_0
    return v2

    .line 1241
    :cond_0
    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->srcPos:I

    if-ge v4, v5, :cond_1

    .line 1243
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_0

    .line 1246
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1100(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    .line 1250
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$800(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mDropPos:I

    .line 1227
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$900(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->srcPos:I

    .line 1228
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$102(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    .line 1229
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1230
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mInitDeltaX:F

    .line 1231
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1200(Lcn/nubia/weather/ui/view/DragSortListView;)V

    .line 1273
    return-void
.end method

.method public onUpdate(FF)V
    .locals 8
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1258
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->getTargetY()I

    move-result v4

    .line 1259
    .local v4, "targetY":I
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingLeft()I

    move-result v3

    .line 1260
    .local v3, "targetX":I
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    int-to-float v1, v5

    .line 1261
    .local v1, "deltaY":F
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    int-to-float v0, v5

    .line 1262
    .local v0, "deltaX":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, p2

    .line 1263
    .local v2, "f":F
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mInitDeltaX:F

    div-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    .line 1264
    :cond_0
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 1265
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v6}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1266
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$700(Lcn/nubia/weather/ui/view/DragSortListView;Z)V

    .line 1268
    :cond_1
    return-void
.end method
