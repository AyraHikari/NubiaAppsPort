.class public abstract Lc/a/a/a/d;
.super Lc/a/a/a/a;
.source "SourceFile"


# instance fields
.field private final g:F

.field private h:F

.field private i:F

.field protected j:F

.field protected k:F

.field protected l:F

.field protected m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lc/a/a/a/d;->g:F

    return-void
.end method

.method protected static f(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static g(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected e(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lc/a/a/a/a;->e(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float/2addr v5, v2

    sub-float/2addr v0, v3

    .line 7
    iput v5, p0, Lc/a/a/a/d;->j:F

    .line 8
    iput v0, p0, Lc/a/a/a/d;->k:F

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 12
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v2, v0

    sub-float/2addr p1, v1

    .line 13
    iput v2, p0, Lc/a/a/a/d;->l:F

    .line 14
    iput p1, p0, Lc/a/a/a/d;->m:F

    return-void
.end method

.method protected h(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lc/a/a/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lc/a/a/a/d;->g:F

    sub-float/2addr v1, v2

    iput v1, p0, Lc/a/a/a/d;->h:F

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p0, Lc/a/a/a/d;->i:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    const/4 v5, 0x1

    .line 6
    invoke-static {p1, v5}, Lc/a/a/a/d;->f(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 7
    invoke-static {p1, v5}, Lc/a/a/a/d;->g(Landroid/view/MotionEvent;I)F

    move-result p1

    cmpg-float v7, v3, v2

    const/4 v8, 0x0

    if-ltz v7, :cond_1

    cmpg-float v7, v4, v2

    if-ltz v7, :cond_1

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_1

    cmpl-float v3, v4, v0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    cmpg-float v4, v6, v2

    if-ltz v4, :cond_3

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_3

    cmpl-float v1, v6, v1

    if-gtz v1, :cond_3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v8

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v5

    :goto_3
    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    return v5

    :cond_4
    if-eqz v3, :cond_5

    return v5

    :cond_5
    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v8
.end method
