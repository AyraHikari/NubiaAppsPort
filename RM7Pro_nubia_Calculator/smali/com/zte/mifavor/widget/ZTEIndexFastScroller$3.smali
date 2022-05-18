.class Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZTEIndexFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$302(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    .line 393
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$802(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$802(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 397
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method
