.class Lcn/nubia/collage/ui/e$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/e;


# direct methods
.method private constructor <init>(Lcn/nubia/collage/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/e$d;->a:Lcn/nubia/collage/ui/e;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/ui/e;Lcn/nubia/collage/ui/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/e$d;-><init>(Lcn/nubia/collage/ui/e;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/e$d;->a:Lcn/nubia/collage/ui/e;

    invoke-static {v0}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/collage/ui/e$b;->d(FF)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/e$d;->a:Lcn/nubia/collage/ui/e;

    invoke-static {v0}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/nubia/collage/ui/e$b;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/e$d;->a:Lcn/nubia/collage/ui/e;

    invoke-static {v0}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/collage/ui/e$b;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/ui/e$d;->a:Lcn/nubia/collage/ui/e;

    invoke-static {v0}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-interface {v0, p3, p4, v1, p2}, Lcn/nubia/collage/ui/e$b;->b(FFFF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/e$d;->a:Lcn/nubia/collage/ui/e;

    invoke-static {v0}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/collage/ui/e$b;->e(FF)Z

    move-result p1

    return p1
.end method
