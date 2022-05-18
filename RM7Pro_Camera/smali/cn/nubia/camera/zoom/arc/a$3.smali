.class Lcn/nubia/camera/zoom/arc/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/ArcZoomView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/arc/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/zoom/arc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/a;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->g(Lcn/nubia/camera/zoom/arc/a;)V

    .line 362
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->h(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/af/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/ba/f;->b(ILcn/nubia/camera/af/a;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->e(Lcn/nubia/camera/zoom/arc/a;)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->e(Lcn/nubia/camera/zoom/arc/a;)F

    move-result v1

    invoke-static {v0, v1, p1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;FF)V

    .line 377
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;F)F

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->i(Lcn/nubia/camera/zoom/arc/a;)V

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->j(Lcn/nubia/camera/zoom/arc/a;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->setVisibility(I)V

    .line 370
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$3;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->h(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/af/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/ba/f;->b(ILcn/nubia/camera/af/a;)V

    return-void
.end method
