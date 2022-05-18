.class Lcn/nubia/camera/t/b$d;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/t/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/t/b;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcn/nubia/camera/t/b$d;->a:Lcn/nubia/camera/t/b;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/t/b;Lcn/nubia/camera/t/b$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/camera/t/b$d;-><init>(Lcn/nubia/camera/t/b;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/t/b$d;->a:Lcn/nubia/camera/t/b;

    invoke-static {v0}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 139
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 138
    invoke-interface {v0, v1, v2, p1}, Lcn/nubia/camera/t/b$a;->a(FFF)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/t/b$d;->a:Lcn/nubia/camera/t/b;

    invoke-static {v0}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 132
    invoke-interface {v0, v1, p1}, Lcn/nubia/camera/t/b$a;->a(FF)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcn/nubia/camera/t/b$d;->a:Lcn/nubia/camera/t/b;

    invoke-static {p1}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/t/b$a;->u()V

    return-void
.end method
