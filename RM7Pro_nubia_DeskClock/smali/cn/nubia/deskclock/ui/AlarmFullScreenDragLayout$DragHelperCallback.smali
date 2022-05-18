.class Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "AlarmFullScreenDragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field private mDetermineDismiss:Z

.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->mDetermineDismiss:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
    .param p2, "x1"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;-><init>(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 80
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 81
    .local v2, "topBound":I
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getPaddingTop()I

    move-result v0

    .line 82
    .local v0, "bottomBound":I
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 83
    .local v1, "newTop":I
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$402(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;I)I

    .line 84
    return v1
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 103
    const-string v0, "AlarmFullScreenDragLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onViewDragStateChanged state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; mDetermineDismiss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->mDetermineDismiss:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->mDetermineDismiss:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$500(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v0, p3}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$102(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;I)I

    .line 68
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$202(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;I)I

    .line 69
    const-string v0, "AlarmFullScreenDragLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$100(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "AlarmFullScreenDragLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDy/mDragRange  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$100(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$200(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$200(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$300(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$100(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$200(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$200(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;->onMove(F)V

    .line 72
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->requestLayout()V

    .line 73
    const/4 v0, 0x5

    if-le p5, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->invalidate()V

    .line 76
    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 89
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getHeight()I

    move-result v1

    mul-int/lit16 v1, v1, 0x9b

    div-int/lit16 v0, v1, 0xa5

    .line 90
    .local v0, "a":I
    const-string v1, "AlarmFullScreenDragLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onViewReleased --- a : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; mDy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$400(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$400(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->access$400(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    .line 93
    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 92
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->mDetermineDismiss:Z

    .line 99
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->invalidate()V

    .line 100
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->mDetermineDismiss:Z

    goto :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 61
    const-string v0, "AlarmFullScreenDragLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " child : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;->this$0:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragView2:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
