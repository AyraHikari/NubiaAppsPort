.class Lcn/nubia/camera/at/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/e;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcn/nubia/camera/at/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/e;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcn/nubia/camera/at/e$9;->b:Lcn/nubia/camera/at/e;

    iput-object p2, p0, Lcn/nubia/camera/at/e$9;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcn/nubia/camera/at/e$9;->b:Lcn/nubia/camera/at/e;

    invoke-static {v0}, Lcn/nubia/camera/at/e;->l(Lcn/nubia/camera/at/e;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x3e8

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    .line 453
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 454
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 455
    new-instance v1, Lcn/nubia/camera/at/e$9$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/at/e$9$1;-><init>(Lcn/nubia/camera/at/e$9;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 476
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
