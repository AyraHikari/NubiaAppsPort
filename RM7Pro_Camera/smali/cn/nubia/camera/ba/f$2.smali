.class Lcn/nubia/camera/ba/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ba/f;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ba/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ba/f;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcn/nubia/camera/ba/f$2;->a:Lcn/nubia/camera/ba/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 351
    iget-object p1, p0, Lcn/nubia/camera/ba/f$2;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 352
    iget-object p1, p0, Lcn/nubia/camera/ba/f$2;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->h(Lcn/nubia/camera/ba/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ba/f$2;->a:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->g(Lcn/nubia/camera/ba/f;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 345
    iget-object p1, p0, Lcn/nubia/camera/ba/f$2;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->f(Lcn/nubia/camera/ba/f;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcn/nubia/camera/ba/f$2;->a:Lcn/nubia/camera/ba/f;

    invoke-static {p1}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
