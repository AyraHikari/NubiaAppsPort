.class Lcn/nubia/a/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/a/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/a/b;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcn/nubia/a/b$10;->a:Lcn/nubia/a/b;

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

    .line 698
    iget-object p1, p0, Lcn/nubia/a/b$10;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->i(Lcn/nubia/a/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

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
