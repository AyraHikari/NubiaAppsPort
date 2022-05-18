.class public abstract Lc/b/a/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:I

.field private c:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lc/b/a/a/a;->a:J

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 8

    iget-wide v0, p0, Lc/b/a/a/a;->a:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iput-wide p1, p0, Lc/b/a/a/a;->a:J

    :cond_1
    iget-wide v0, p0, Lc/b/a/a/a;->a:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    int-to-float p2, p1

    iget v0, p0, Lc/b/a/a/a;->b:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lc/b/a/b/b;->a(FFF)F

    move-result p2

    iget-object v0, p0, Lc/b/a/a/a;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_2
    invoke-virtual {p0, p2}, Lc/b/a/a/a;->c(F)V

    iget p2, p0, Lc/b/a/a/a;->b:I

    if-lt p1, p2, :cond_3

    iput-wide v2, p0, Lc/b/a/a/a;->a:J

    :cond_3
    iget-wide p1, p0, Lc/b/a/a/a;->a:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lc/b/a/a/a;->a:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract c(F)V
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lc/b/a/a/a;->b:I

    return-void
.end method

.method public e(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/a/a;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public f()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc/b/a/a/a;->a:J

    return-void
.end method
