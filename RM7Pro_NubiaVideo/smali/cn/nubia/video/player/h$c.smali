.class Lcn/nubia/video/player/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/h;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/h;Lcn/nubia/video/player/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/h$c;-><init>(Lcn/nubia/video/player/h;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v0}, Lcn/nubia/video/player/h;->k(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/q;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/q;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcn/nubia/video/player/h;->b(Lcn/nubia/video/player/h;Z)Z

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v0, v3}, Lcn/nubia/video/player/h;->m(Lcn/nubia/video/player/h;Z)Z

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v1, p1

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->c(Lcn/nubia/video/player/h;)F

    move-result p1

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p1, v0}, Lcn/nubia/video/player/h;->d(Lcn/nubia/video/player/h;F)F

    goto :goto_0

    :cond_1
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 11
    iget-object v0, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v0}, Lcn/nubia/video/player/h;->c(Lcn/nubia/video/player/h;)F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v1}, Lcn/nubia/video/player/h;->e(Lcn/nubia/video/player/h;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 12
    iget-object v1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v1}, Lcn/nubia/video/player/h;->f(Lcn/nubia/video/player/h;)I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 13
    iget-object v1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v1, v0}, Lcn/nubia/video/player/h;->g(Lcn/nubia/video/player/h;I)I

    .line 14
    iget-object v0, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v0}, Lcn/nubia/video/player/h;->c(Lcn/nubia/video/player/h;)F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v1}, Lcn/nubia/video/player/h;->e(Lcn/nubia/video/player/h;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 15
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->h(Lcn/nubia/video/player/h;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/video/player/PlayerActivity;

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->k(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/q;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->Z()V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v0}, Lcn/nubia/video/player/h;->c(Lcn/nubia/video/player/h;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v0}, Lcn/nubia/video/player/h;->e(Lcn/nubia/video/player/h;)F

    move-result v0

    neg-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->h(Lcn/nubia/video/player/h;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/video/player/PlayerActivity;

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->k(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/q;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->G()V

    :cond_3
    :goto_0
    return v3

    :cond_4
    return v1
.end method

.method private b(FFFF)V
    .locals 1

    sub-float p2, p3, p1

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget-object v0, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v0}, Lcn/nubia/video/player/h;->l(Lcn/nubia/video/player/h;)F

    move-result v0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_1

    .line 2
    iget-object p4, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcn/nubia/video/player/h;->m(Lcn/nubia/video/player/h;Z)Z

    .line 3
    iget-object p4, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p4, v0}, Lcn/nubia/video/player/h;->o(Lcn/nubia/video/player/h;Z)Z

    .line 4
    invoke-static {}, Lcn/nubia/video/player/q;->g()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 5
    iget-object p2, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    sub-float/2addr p1, p3

    invoke-static {p2}, Lcn/nubia/video/player/h;->l(Lcn/nubia/video/player/h;)F

    move-result p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p2, p1}, Lcn/nubia/video/player/h;->q(Lcn/nubia/video/player/h;I)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->l(Lcn/nubia/video/player/h;)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcn/nubia/video/player/h;->q(Lcn/nubia/video/player/h;I)I

    .line 7
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->r(Lcn/nubia/video/player/h;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p3}, Lcn/nubia/video/player/h;->p(Lcn/nubia/video/player/h;)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcn/nubia/video/player/h;->t(Lcn/nubia/video/player/h;I)I

    move-result p1

    .line 8
    iget-object p2, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p2}, Lcn/nubia/video/player/h;->k(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/video/player/q;->j(I)V

    :cond_1
    return-void
.end method

.method private c(FFFF)V
    .locals 0

    sub-float/2addr p2, p4

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p3, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p3}, Lcn/nubia/video/player/h;->l(Lcn/nubia/video/player/h;)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcn/nubia/video/player/h;->m(Lcn/nubia/video/player/h;Z)Z

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcn/nubia/video/player/h;->o(Lcn/nubia/video/player/h;Z)Z

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->u(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/f;->b(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->i(Lcn/nubia/video/player/h;)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->h(Lcn/nubia/video/player/h;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/video/player/PlayerActivity;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->k(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/q;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/video/player/h;->s(Lcn/nubia/video/player/h;I)I

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p1}, Lcn/nubia/video/player/h;->u(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/f;->a()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 p3, 0x1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p4, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p4}, Lcn/nubia/video/player/h;->k(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/q;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/video/player/q;->f()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 2
    invoke-direct {p0, p2}, Lcn/nubia/video/player/h$c;->a(Landroid/view/MotionEvent;)Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {p4}, Lcn/nubia/video/player/h;->a(Lcn/nubia/video/player/h;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float v1, p4, v0

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    invoke-static {v1}, Lcn/nubia/video/player/h;->j(Lcn/nubia/video/player/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcn/nubia/video/player/h$c;->a:Lcn/nubia/video/player/h;

    .line 8
    invoke-static {v1}, Lcn/nubia/video/player/h;->n(Lcn/nubia/video/player/h;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    :cond_2
    invoke-direct {p0, p4, p1, v0, p2}, Lcn/nubia/video/player/h$c;->b(FFFF)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0, p4, p1, v0, p2}, Lcn/nubia/video/player/h$c;->c(FFFF)V

    :cond_4
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
