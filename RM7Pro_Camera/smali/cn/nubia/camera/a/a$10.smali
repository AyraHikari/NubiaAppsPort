.class Lcn/nubia/camera/a/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 1537
    iput-object p1, p0, Lcn/nubia/camera/a/a$10;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1552
    iget-object p1, p0, Lcn/nubia/camera/a/a$10;->a:Lcn/nubia/camera/a/a;

    iget-object p1, p1, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1541
    iget-object p1, p0, Lcn/nubia/camera/a/a$10;->a:Lcn/nubia/camera/a/a;

    iget-object p1, p1, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1542
    iget-object p1, p0, Lcn/nubia/camera/a/a$10;->a:Lcn/nubia/camera/a/a;

    iget-object p1, p1, Lcn/nubia/camera/a/a;->f:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method
