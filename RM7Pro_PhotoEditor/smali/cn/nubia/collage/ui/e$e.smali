.class Lcn/nubia/collage/ui/e$e;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/e;


# direct methods
.method private constructor <init>(Lcn/nubia/collage/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/e$e;->a:Lcn/nubia/collage/ui/e;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/ui/e;Lcn/nubia/collage/ui/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/e$e;-><init>(Lcn/nubia/collage/ui/e;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/ui/e$e;->a:Lcn/nubia/collage/ui/e;

    invoke-static {v0}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcn/nubia/collage/ui/e$b;->a(FFF)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/e$e;->a:Lcn/nubia/collage/ui/e;

    invoke-static {v0}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/collage/ui/e$b;->c(FF)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    iget-object p1, p0, Lcn/nubia/collage/ui/e$e;->a:Lcn/nubia/collage/ui/e;

    invoke-static {p1}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/collage/ui/e$b;->h()V

    return-void
.end method
