.class Lcom/zte/mifavor/widget/GridView$TouchGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/GridView;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/GridView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zte/mifavor/widget/GridView$TouchGesture;->this$0:Lcom/zte/mifavor/widget/GridView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/GridView;Lcom/zte/mifavor/widget/GridView$1;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/GridView$TouchGesture;-><init>(Lcom/zte/mifavor/widget/GridView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 108
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$TouchGesture;->this$0:Lcom/zte/mifavor/widget/GridView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/GridView;->canScrollVertically(I)Z

    move-result p1

    .line 109
    iget-object p2, p0, Lcom/zte/mifavor/widget/GridView$TouchGesture;->this$0:Lcom/zte/mifavor/widget/GridView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/zte/mifavor/widget/GridView;->canScrollVertically(I)Z

    move-result p2

    const-string v0, "-QW-View-SpringGV"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling+++++++++++++++++++++, velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", canScrollUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", canScollDown = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", IsBeingDragged = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$TouchGesture;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p1, p1, Lcom/zte/mifavor/widget/GridView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getIsBeingDragged()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$TouchGesture;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p1, p1, Lcom/zte/mifavor/widget/GridView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->getIsBeingDragged()Z

    move-result p1

    if-nez p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$TouchGesture;->this$0:Lcom/zte/mifavor/widget/GridView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GridView;->access$100(Lcom/zte/mifavor/widget/GridView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$TouchGesture;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p1, p1, Lcom/zte/mifavor/widget/GridView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-eqz p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/zte/mifavor/widget/GridView$TouchGesture;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p0, p0, Lcom/zte/mifavor/widget/GridView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    neg-float p1, p4

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->fling(I)V

    :cond_0
    return p3

    :cond_1
    const-string p0, "-QW-View-SpringGV"

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fling+++++++++++++++++++++, ignore fling, velocityY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
