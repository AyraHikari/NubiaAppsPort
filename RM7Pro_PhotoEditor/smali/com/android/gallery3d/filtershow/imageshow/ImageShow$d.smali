.class Lcom/android/gallery3d/filtershow/imageshow/ImageShow$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->F(F)V
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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$d;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$d;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->a(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->n0()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$d;->a:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
