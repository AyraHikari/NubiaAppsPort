.class Lcn/nubia/camera/q/m$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/m;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcn/nubia/camera/q/m$3;->a:Lcn/nubia/camera/q/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1039
    iget-object p1, p0, Lcn/nubia/camera/q/m$3;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->v(Lcn/nubia/camera/q/m;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TopbarMore show: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/m$3;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->m(Lcn/nubia/camera/q/m;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TopBarFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object p1, p0, Lcn/nubia/camera/q/m$3;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->u(Lcn/nubia/camera/q/m;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/m$3;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->m(Lcn/nubia/camera/q/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1034
    iget-object p1, p0, Lcn/nubia/camera/q/m$3;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->v(Lcn/nubia/camera/q/m;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1027
    iget-object p1, p0, Lcn/nubia/camera/q/m$3;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->u(Lcn/nubia/camera/q/m;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method
