.class Lcn/nubia/camera/ae/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ae/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ae/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ae/a;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcn/nubia/camera/ae/a$5;->a:Lcn/nubia/camera/ae/a;

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

    .line 574
    iget-object p1, p0, Lcn/nubia/camera/ae/a$5;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->i(Lcn/nubia/camera/ae/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ae/a$5;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0}, Lcn/nubia/camera/ae/a;->j(Lcn/nubia/camera/ae/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

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
