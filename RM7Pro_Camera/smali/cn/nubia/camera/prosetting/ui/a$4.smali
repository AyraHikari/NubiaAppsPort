.class Lcn/nubia/camera/prosetting/ui/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prosetting/ui/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prosetting/ui/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prosetting/ui/a;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/a$4;->a:Lcn/nubia/camera/prosetting/ui/a;

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

    .line 408
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/a$4;->a:Lcn/nubia/camera/prosetting/ui/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/prosetting/ui/a;->a(Lcn/nubia/camera/prosetting/ui/a;Z)Z

    .line 409
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/a$4;->a:Lcn/nubia/camera/prosetting/ui/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/prosetting/ui/a;->b(Lcn/nubia/camera/prosetting/ui/a;Z)Z

    .line 410
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/a$4;->a:Lcn/nubia/camera/prosetting/ui/a;

    invoke-virtual {p1}, Lcn/nubia/camera/prosetting/ui/a;->d()V

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
