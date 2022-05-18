.class Lcn/nubia/camera/prosetting/ui/MeteringModeView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$6;->a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

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

    .line 455
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$6;->a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(Lcn/nubia/camera/prosetting/ui/MeteringModeView;Z)Z

    .line 456
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$6;->a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b(Lcn/nubia/camera/prosetting/ui/MeteringModeView;Z)Z

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
