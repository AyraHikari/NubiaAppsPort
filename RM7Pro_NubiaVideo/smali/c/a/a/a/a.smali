.class public abstract Lc/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Z

.field protected c:Landroid/view/MotionEvent;

.field protected d:Landroid/view/MotionEvent;

.field protected e:F

.field protected f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract a(ILandroid/view/MotionEvent;)V
.end method

.method protected abstract b(ILandroid/view/MotionEvent;)V
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2
    iget-boolean v1, p0, Lc/a/a/a/a;->b:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0, p1}, Lc/a/a/a/a;->b(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0, p1}, Lc/a/a/a/a;->a(ILandroid/view/MotionEvent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    iput-object v1, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/a/a/a/a;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    iput-object v1, p0, Lc/a/a/a/a;->d:Landroid/view/MotionEvent;

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lc/a/a/a/a;->b:Z

    return-void
.end method

.method protected e(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    .line 2
    iget-object v1, p0, Lc/a/a/a/a;->d:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lc/a/a/a/a;->d:Landroid/view/MotionEvent;

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/a;->d:Landroid/view/MotionEvent;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    iput p1, p0, Lc/a/a/a/a;->e:F

    .line 8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    iput p1, p0, Lc/a/a/a/a;->f:F

    return-void
.end method
