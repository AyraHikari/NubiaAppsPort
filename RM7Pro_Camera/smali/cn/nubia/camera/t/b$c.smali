.class Lcn/nubia/camera/t/b$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/t/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/t/b;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/t/b$c;->a:Lcn/nubia/camera/t/b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/t/b;Lcn/nubia/camera/t/b$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/camera/t/b$c;-><init>(Lcn/nubia/camera/t/b;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/t/b$c;->a:Lcn/nubia/camera/t/b;

    invoke-static {v0}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/camera/t/b$a;->c(FF)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/t/b$c;->a:Lcn/nubia/camera/t/b;

    invoke-static {v0}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/nubia/camera/t/b$a;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "GestureRecognizer"

    const-string p2, "onFling null"

    .line 121
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/t/b$c;->a:Lcn/nubia/camera/t/b;

    invoke-static {v0}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/camera/t/b$a;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/t/b$c;->a:Lcn/nubia/camera/t/b;

    invoke-static {v0}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object v0

    .line 110
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

    .line 109
    invoke-interface {v0, p3, p4, v1, p2}, Lcn/nubia/camera/t/b$a;->a(FFFF)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/t/b$c;->a:Lcn/nubia/camera/t/b;

    invoke-static {v0}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/camera/t/b$a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
