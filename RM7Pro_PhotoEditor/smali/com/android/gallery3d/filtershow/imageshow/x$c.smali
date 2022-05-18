.class Lcom/android/gallery3d/filtershow/imageshow/x$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$c;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$c;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->d(Lcom/android/gallery3d/filtershow/imageshow/x;Z)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$c;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->e(Lcom/android/gallery3d/filtershow/imageshow/x;F)F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$c;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->f(Lcom/android/gallery3d/filtershow/imageshow/x;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$c;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$c;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->d(Lcom/android/gallery3d/filtershow/imageshow/x;Z)Z

    return-void
.end method
