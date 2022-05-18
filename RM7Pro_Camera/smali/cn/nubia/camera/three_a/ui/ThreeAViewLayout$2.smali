.class Lcn/nubia/camera/three_a/ui/ThreeAViewLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout$2;->a:Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ThreeAViewLayout"

    const-string v0, "disappear cencel"

    .line 131
    invoke-static {p1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ThreeAViewLayout"

    const-string v0, "disappear end"

    .line 126
    invoke-static {p1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ThreeAViewLayout"

    const-string v0, "disappear start"

    .line 121
    invoke-static {p1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
