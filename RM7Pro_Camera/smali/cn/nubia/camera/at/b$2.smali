.class Lcn/nubia/camera/at/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/b;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/b;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 323
    iget-object v0, p0, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {v0}, Lcn/nubia/camera/at/b;->f(Lcn/nubia/camera/at/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 327
    :cond_0
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {v0}, Lcn/nubia/camera/at/b;->b(Lcn/nubia/camera/at/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {v0}, Lcn/nubia/camera/at/b;->b(Lcn/nubia/camera/at/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 328
    iget-object v1, p0, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {v1}, Lcn/nubia/camera/at/b;->b(Lcn/nubia/camera/at/b;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1f4

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 332
    iget-object v4, p0, Lcn/nubia/camera/at/b$2;->a:Lcn/nubia/camera/at/b;

    invoke-static {v4}, Lcn/nubia/camera/at/b;->a(Lcn/nubia/camera/at/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v4

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 333
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 334
    invoke-virtual {v4, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 336
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    aput-object v4, v2, v5

    .line 337
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 338
    new-instance v0, Lcn/nubia/camera/at/b$2$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/at/b$2$1;-><init>(Lcn/nubia/camera/at/b$2;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 373
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
