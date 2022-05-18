.class Lcom/android/gallery3d/filtershow/imageshow/u$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/imageshow/u;->K(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/imageshow/u;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/u;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u$a;->a:Lcom/android/gallery3d/filtershow/imageshow/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/u$a;->a:Lcom/android/gallery3d/filtershow/imageshow/u;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/u;->G(Lcom/android/gallery3d/filtershow/imageshow/u;F)F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/u$a;->a:Lcom/android/gallery3d/filtershow/imageshow/u;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
