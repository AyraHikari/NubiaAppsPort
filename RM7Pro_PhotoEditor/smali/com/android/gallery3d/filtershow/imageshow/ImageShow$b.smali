.class Lcom/android/gallery3d/filtershow/imageshow/ImageShow$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->C(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$b;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->Z()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->P0(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$b;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
