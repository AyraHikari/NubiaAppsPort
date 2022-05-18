.class Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$2;
.super Ljava/lang/Object;
.source "CountDownInnerTriangeCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->getResetTimeAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    .prologue
    .line 163
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$2;->this$0:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 166
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$2;->this$0:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->access$000(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;)[Lcn/nubia/deskclock/ui/Triangle;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 167
    .local v1, "triangle":Lcn/nubia/deskclock/ui/Triangle;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 168
    .local v0, "fraction":F
    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$2;->this$0:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-static {v5, v0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->access$102(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;F)F

    .line 169
    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$2;->this$0:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->invalidate()V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "fraction":F
    .end local v1    # "triangle":Lcn/nubia/deskclock/ui/Triangle;
    :cond_0
    return-void
.end method
