.class Lcom/android/setting/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/e;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/e;


# direct methods
.method constructor <init>(Lcom/android/setting/e;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/android/setting/e$2;->a:Lcom/android/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 550
    iget-object p1, p0, Lcom/android/setting/e$2;->a:Lcom/android/setting/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/setting/e;->a(Lcom/android/setting/e;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 545
    iget-object p1, p0, Lcom/android/setting/e$2;->a:Lcom/android/setting/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/setting/e;->a(Lcom/android/setting/e;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 540
    iget-object p1, p0, Lcom/android/setting/e$2;->a:Lcom/android/setting/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/setting/e;->a(Lcom/android/setting/e;Z)Z

    return-void
.end method
