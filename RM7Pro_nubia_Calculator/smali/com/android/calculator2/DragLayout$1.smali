.class Lcom/android/calculator2/DragLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/DragLayout;->createAnimator(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/DragLayout;


# direct methods
.method constructor <init>(Lcom/android/calculator2/DragLayout;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/calculator2/DragLayout$1;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 237
    iget-object p1, p0, Lcom/android/calculator2/DragLayout$1;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p1}, Lcom/android/calculator2/DragLayout;->access$000(Lcom/android/calculator2/DragLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 238
    iget-object p1, p0, Lcom/android/calculator2/DragLayout$1;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p1}, Lcom/android/calculator2/DragLayout;->access$000(Lcom/android/calculator2/DragLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/calculator2/DragLayout$1;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {v0}, Lcom/android/calculator2/DragLayout;->access$100(Lcom/android/calculator2/DragLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/DragLayout$1;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {v1}, Lcom/android/calculator2/DragLayout;->access$200(Lcom/android/calculator2/DragLayout;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/DragLayout$1;->this$0:Lcom/android/calculator2/DragLayout;

    invoke-static {p0}, Lcom/android/calculator2/DragLayout;->access$300(Lcom/android/calculator2/DragLayout;)I

    move-result p0

    neg-int p0, p0

    :goto_0
    invoke-virtual {p1, v0, v2, p0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    return-void
.end method
