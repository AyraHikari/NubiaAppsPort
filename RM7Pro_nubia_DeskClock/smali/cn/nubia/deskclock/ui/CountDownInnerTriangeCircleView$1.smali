.class Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$1;
.super Ljava/lang/Object;
.source "CountDownInnerTriangeCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->getSetTimeAnimator(Lcn/nubia/deskclock/model/TimerHelper;)Landroid/animation/ValueAnimator;
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
    .line 138
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v7, 0x42780000    # 62.0f

    .line 141
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->access$000(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;)[Lcn/nubia/deskclock/ui/Triangle;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 142
    .local v1, "triangle":Lcn/nubia/deskclock/ui/Triangle;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 143
    .local v0, "fraction":F
    iget v5, v1, Lcn/nubia/deskclock/ui/Triangle;->INIT_HEIGHT:F

    sub-float/2addr v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    invoke-virtual {v1, v5}, Lcn/nubia/deskclock/ui/Triangle;->setHeight(F)V

    .line 144
    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->invalidate()V

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "fraction":F
    .end local v1    # "triangle":Lcn/nubia/deskclock/ui/Triangle;
    :cond_0
    return-void
.end method
