.class public Lcom/android/calculator2/DragLayout$DragHelperCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/DragLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/DragLayout;


# direct methods
.method public constructor <init>(Lcom/android/calculator2/DragLayout;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    const/4 p1, 0x0

    .line 330
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p0}, Lcom/android/calculator2/DragLayout;->access$300(Lcom/android/calculator2/DragLayout;)I

    move-result p0

    neg-int p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p0}, Lcom/android/calculator2/DragLayout;->access$300(Lcom/android/calculator2/DragLayout;)I

    move-result p0

    return p0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 335
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 337
    iget-object p1, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p1}, Lcom/android/calculator2/DragLayout;->access$200(Lcom/android/calculator2/DragLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/calculator2/DragLayout;->access$202(Lcom/android/calculator2/DragLayout;Z)Z

    .line 339
    iget-object p0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p0}, Lcom/android/calculator2/DragLayout;->access$700(Lcom/android/calculator2/DragLayout;)V

    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    .line 292
    invoke-static {p1}, Lcom/android/calculator2/DragLayout;->access$000(Lcom/android/calculator2/DragLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {v0}, Lcom/android/calculator2/DragLayout;->access$300(Lcom/android/calculator2/DragLayout;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    if-ge p1, v0, :cond_0

    .line 293
    iget-object p0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p0}, Lcom/android/calculator2/DragLayout;->access$400(Lcom/android/calculator2/DragLayout;)V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    .line 299
    iget-object p1, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p1}, Lcom/android/calculator2/DragLayout;->access$500(Lcom/android/calculator2/DragLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/DragLayout$DragCallback;

    const/high16 p4, 0x3f800000    # 1.0f

    int-to-float p5, p3

    .line 301
    iget-object v0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {v0}, Lcom/android/calculator2/DragLayout;->access$300(Lcom/android/calculator2/DragLayout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    add-float/2addr p5, p4

    invoke-interface {p2, p5}, Lcom/android/calculator2/DragLayout$DragCallback;->whileDragging(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5

    float-to-double p2, p3

    const-wide v0, 0x4082c00000000000L    # 600.0

    cmpl-double v0, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, -0x3f7d400000000000L    # -600.0

    cmpg-double p2, p2, v3

    if-gez p2, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p2, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p2}, Lcom/android/calculator2/DragLayout;->access$300(Lcom/android/calculator2/DragLayout;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    neg-int p2, p2

    if-le p1, p2, :cond_1

    .line 355
    :goto_0
    iget-object p1, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p1}, Lcom/android/calculator2/DragLayout;->access$000(Lcom/android/calculator2/DragLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    if-eqz v1, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p2}, Lcom/android/calculator2/DragLayout;->access$300(Lcom/android/calculator2/DragLayout;)I

    move-result p2

    neg-int p2, p2

    :goto_1
    invoke-virtual {p1, v2, p2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 356
    iget-object p0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {v0}, Lcom/android/calculator2/DragLayout;->access$600(Lcom/android/calculator2/DragLayout;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 317
    :cond_0
    iget v1, p2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    .line 318
    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    .line 320
    iget-object p0, p0, Lcom/android/calculator2/DragLayout$DragHelperCallback;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p0}, Lcom/android/calculator2/DragLayout;->access$500(Lcom/android/calculator2/DragLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/DragLayout$DragCallback;

    .line 321
    invoke-interface {v2, p1, v1, p2}, Lcom/android/calculator2/DragLayout$DragCallback;->shouldCaptureView(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
