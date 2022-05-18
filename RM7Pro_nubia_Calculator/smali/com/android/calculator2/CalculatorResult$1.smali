.class Lcom/android/calculator2/CalculatorResult$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalculatorResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorResult;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorResult;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 179
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object p1, p1, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object p2, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object p2, p2, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->getFinalX()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/calculator2/CalculatorResult;->access$002(Lcom/android/calculator2/CalculatorResult;I)I

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object p1, p1, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 183
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->stopActionModeOrContextMenu()Z

    .line 184
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->cancelLongPress()V

    .line 186
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorResult;->access$100(Lcom/android/calculator2/CalculatorResult;)Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object v0, p1, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorResult;->access$000(Lcom/android/calculator2/CalculatorResult;)I

    move-result v1

    const/4 v2, 0x0

    float-to-int p1, p3

    neg-int v3, p1

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    .line 188
    invoke-static {p1}, Lcom/android/calculator2/CalculatorResult;->access$200(Lcom/android/calculator2/CalculatorResult;)I

    move-result v5

    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorResult;->access$300(Lcom/android/calculator2/CalculatorResult;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 187
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 189
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->postInvalidateOnAnimation()V

    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorResult;->access$400(Lcom/android/calculator2/CalculatorResult;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->performLongClick()Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    float-to-int p3, p3

    .line 196
    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object p4, p4, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p4

    if-nez p4, :cond_0

    .line 197
    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object v0, v0, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    invoke-static {p4, v0}, Lcom/android/calculator2/CalculatorResult;->access$002(Lcom/android/calculator2/CalculatorResult;I)I

    .line 199
    :cond_0
    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object p4, p4, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 200
    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p4}, Lcom/android/calculator2/CalculatorResult;->stopActionModeOrContextMenu()Z

    .line 201
    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p4}, Lcom/android/calculator2/CalculatorResult;->cancelLongPress()V

    .line 202
    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p4}, Lcom/android/calculator2/CalculatorResult;->access$100(Lcom/android/calculator2/CalculatorResult;)Z

    move-result p4

    if-nez p4, :cond_1

    return v0

    .line 203
    :cond_1
    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p4}, Lcom/android/calculator2/CalculatorResult;->access$000(Lcom/android/calculator2/CalculatorResult;)I

    move-result p4

    add-int/2addr p4, p3

    iget-object v1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {v1}, Lcom/android/calculator2/CalculatorResult;->access$200(Lcom/android/calculator2/CalculatorResult;)I

    move-result v1

    if-ge p4, v1, :cond_3

    .line 204
    iget-object p3, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p3}, Lcom/android/calculator2/CalculatorResult;->access$200(Lcom/android/calculator2/CalculatorResult;)I

    move-result p3

    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p4}, Lcom/android/calculator2/CalculatorResult;->access$000(Lcom/android/calculator2/CalculatorResult;)I

    move-result p4

    sub-int/2addr p3, p4

    :cond_2
    :goto_0
    move v4, p3

    goto :goto_1

    .line 205
    :cond_3
    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p4}, Lcom/android/calculator2/CalculatorResult;->access$000(Lcom/android/calculator2/CalculatorResult;)I

    move-result p4

    add-int/2addr p4, p3

    iget-object v1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {v1}, Lcom/android/calculator2/CalculatorResult;->access$300(Lcom/android/calculator2/CalculatorResult;)I

    move-result v1

    if-le p4, v1, :cond_2

    .line 206
    iget-object p3, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p3}, Lcom/android/calculator2/CalculatorResult;->access$300(Lcom/android/calculator2/CalculatorResult;)I

    move-result p3

    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p4}, Lcom/android/calculator2/CalculatorResult;->access$000(Lcom/android/calculator2/CalculatorResult;)I

    move-result p4

    sub-int/2addr p3, p4

    goto :goto_0

    .line 208
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    sub-long/2addr p2, v1

    long-to-int p1, p2

    if-lt p1, v0, :cond_5

    const/16 p2, 0x64

    if-le p1, p2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move v6, p1

    goto :goto_4

    :cond_5
    :goto_3
    const/16 p1, 0xa

    goto :goto_2

    .line 210
    :goto_4
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    iget-object v1, p1, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorResult;->access$000(Lcom/android/calculator2/CalculatorResult;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 211
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult$1;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->postInvalidateOnAnimation()V

    return v0
.end method
