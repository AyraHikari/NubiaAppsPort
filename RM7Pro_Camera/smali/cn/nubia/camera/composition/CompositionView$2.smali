.class Lcn/nubia/camera/composition/CompositionView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/composition/CompositionView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/composition/CompositionView;


# direct methods
.method constructor <init>(Lcn/nubia/camera/composition/CompositionView;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcn/nubia/camera/composition/CompositionView$2;->a:Lcn/nubia/camera/composition/CompositionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/composition/CompositionView$2;->a:Lcn/nubia/camera/composition/CompositionView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/camera/composition/CompositionView;->a(Lcn/nubia/camera/composition/CompositionView;F)F

    .line 275
    iget-object p1, p0, Lcn/nubia/camera/composition/CompositionView$2;->a:Lcn/nubia/camera/composition/CompositionView;

    invoke-virtual {p1}, Lcn/nubia/camera/composition/CompositionView;->postInvalidate()V

    return-void
.end method
