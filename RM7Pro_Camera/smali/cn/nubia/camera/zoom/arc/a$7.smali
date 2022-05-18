.class Lcn/nubia/camera/zoom/arc/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/arc/a;->a(Landroid/view/View;Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcn/nubia/camera/zoom/arc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/a;Landroid/view/View;I)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a$7;->c:Lcn/nubia/camera/zoom/arc/a;

    iput-object p2, p0, Lcn/nubia/camera/zoom/arc/a$7;->a:Landroid/view/View;

    iput p3, p0, Lcn/nubia/camera/zoom/arc/a$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 626
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$7;->c:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->o(Lcn/nubia/camera/zoom/arc/a;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$7;->c:Lcn/nubia/camera/zoom/arc/a;

    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$7;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;Landroid/view/View;)Landroid/view/View;

    .line 628
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$7;->c:Lcn/nubia/camera/zoom/arc/a;

    iget v0, p0, Lcn/nubia/camera/zoom/arc/a$7;->b:I

    invoke-static {p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;I)I

    .line 629
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$7;->c:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->o(Lcn/nubia/camera/zoom/arc/a;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
