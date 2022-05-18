.class public Lc/a/a/a/c;
.super Lc/a/a/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/c$b;,
        Lc/a/a/a/c$a;
    }
.end annotation


# instance fields
.field private final n:Lc/a/a/a/c$a;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/a/a/a/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/a/d;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lc/a/a/a/c;->n:Lc/a/a/a/c$a;

    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lc/a/a/a/d;->e(Landroid/view/MotionEvent;)V

    .line 2
    iget-boolean p1, p0, Lc/a/a/a/c;->o:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lc/a/a/a/c;->n:Lc/a/a/a/c$a;

    invoke-interface {p1, p0}, Lc/a/a/a/c$a;->a(Lc/a/a/a/c;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/c;->d()V

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean p1, p0, Lc/a/a/a/c;->o:Z

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lc/a/a/a/c;->n:Lc/a/a/a/c$a;

    invoke-interface {p1, p0}, Lc/a/a/a/c$a;->a(Lc/a/a/a/c;)V

    .line 7
    :cond_3
    invoke-virtual {p0}, Lc/a/a/a/c;->d()V

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0, p2}, Lc/a/a/a/d;->e(Landroid/view/MotionEvent;)V

    .line 9
    iget p1, p0, Lc/a/a/a/a;->e:F

    iget v0, p0, Lc/a/a/a/a;->f:F

    div-float/2addr p1, v0

    const v0, 0x3f2b851f    # 0.67f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 10
    iget-object p1, p0, Lc/a/a/a/c;->n:Lc/a/a/a/c$a;

    invoke-interface {p1, p0}, Lc/a/a/a/c$a;->c(Lc/a/a/a/c;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 12
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    :cond_5
    :goto_0
    return-void
.end method

.method protected b(ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc/a/a/a/c;->d()V

    .line 2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    .line 3
    invoke-virtual {p0, p2}, Lc/a/a/a/d;->e(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p0, p2}, Lc/a/a/a/d;->h(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lc/a/a/a/c;->o:Z

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lc/a/a/a/c;->n:Lc/a/a/a/c$a;

    invoke-interface {p1, p0}, Lc/a/a/a/c$a;->b(Lc/a/a/a/c;)Z

    move-result p1

    iput-boolean p1, p0, Lc/a/a/a/a;->b:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean p1, p0, Lc/a/a/a/c;->o:Z

    if-nez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p2}, Lc/a/a/a/d;->h(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lc/a/a/a/c;->o:Z

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lc/a/a/a/c;->n:Lc/a/a/a/c$a;

    invoke-interface {p1, p0}, Lc/a/a/a/c$a;->b(Lc/a/a/a/c;)Z

    move-result p1

    iput-boolean p1, p0, Lc/a/a/a/a;->b:Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/a/a/a/a;->d()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/a/a/a/c;->o:Z

    return-void
.end method

.method public i()F
    .locals 6

    .line 1
    iget v0, p0, Lc/a/a/a/d;->k:F

    float-to-double v0, v0

    iget v2, p0, Lc/a/a/a/d;->j:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lc/a/a/a/d;->m:F

    float-to-double v2, v2

    iget v4, p0, Lc/a/a/a/d;->l:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
