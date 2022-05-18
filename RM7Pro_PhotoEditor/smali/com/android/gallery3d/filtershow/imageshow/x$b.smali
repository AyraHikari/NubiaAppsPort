.class Lcom/android/gallery3d/filtershow/imageshow/x$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/imageshow/x;->r0(Lcom/android/gallery3d/filtershow/filters/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/imageshow/x;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/x;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$b;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x$b;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->c(Lcom/android/gallery3d/filtershow/imageshow/x;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x$b;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->G0(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x$b;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->c(Lcom/android/gallery3d/filtershow/imageshow/x;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x$b;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->c(Lcom/android/gallery3d/filtershow/imageshow/x;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x$b;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->A0(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x$b;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->z0(F)V

    :cond_2
    :goto_0
    return-void
.end method
