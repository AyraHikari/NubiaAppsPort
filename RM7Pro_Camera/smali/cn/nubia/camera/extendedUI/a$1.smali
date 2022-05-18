.class Lcn/nubia/camera/extendedUI/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/extendedUI/a;->a([Ljava/lang/Object;Ljava/lang/String;FFJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/extendedUI/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/extendedUI/a;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/a$1;->a:Lcn/nubia/camera/extendedUI/a;

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

    .line 89
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/a$1;->a:Lcn/nubia/camera/extendedUI/a;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/a;->a(Lcn/nubia/camera/extendedUI/a;)Lcn/nubia/camera/extendedUI/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/a$1;->a:Lcn/nubia/camera/extendedUI/a;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/a;->a(Lcn/nubia/camera/extendedUI/a;)Lcn/nubia/camera/extendedUI/a$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/nubia/camera/extendedUI/a$a;->a(Z)V

    :cond_0
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
