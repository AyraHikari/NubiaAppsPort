.class public abstract Lcn/nubia/camera/three_a/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/ui/a$b;,
        Lcn/nubia/camera/three_a/ui/a$c;,
        Lcn/nubia/camera/three_a/ui/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcn/nubia/camera/k/ah;

.field protected b:Landroid/widget/RelativeLayout;

.field protected c:Lcn/nubia/camera/ad/a;

.field protected d:Landroid/content/Context;

.field protected e:Lcn/nubia/camera/three_a/ui/h$g;

.field protected f:Landroid/graphics/Rect;

.field protected g:Landroid/os/Handler;

.field protected h:Lcn/nubia/camera/three_a/ui/a$a;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcn/nubia/camera/three_a/ui/a$b;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcn/nubia/camera/three_a/ui/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/three_a/ui/a$c;-><init>(Lcn/nubia/camera/three_a/ui/a;Lcn/nubia/camera/three_a/ui/a$1;)V

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->g:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcn/nubia/camera/three_a/ui/a$a;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/three_a/ui/a$a;-><init>(Lcn/nubia/camera/three_a/ui/a;Lcn/nubia/camera/three_a/ui/a$1;)V

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->h:Lcn/nubia/camera/three_a/ui/a$a;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/a;->k:Z

    .line 39
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/a;->l:Z

    .line 41
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/a;->m:Z

    .line 68
    iput-object p2, p0, Lcn/nubia/camera/three_a/ui/a;->d:Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/a;->b:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p3, p0, Lcn/nubia/camera/three_a/ui/a;->c:Lcn/nubia/camera/ad/a;

    .line 71
    iput-object p4, p0, Lcn/nubia/camera/three_a/ui/a;->a:Lcn/nubia/camera/k/ah;

    .line 72
    iput-object p6, p0, Lcn/nubia/camera/three_a/ui/a;->i:Landroid/graphics/Rect;

    .line 73
    iput-object p7, p0, Lcn/nubia/camera/three_a/ui/a;->j:Landroid/graphics/Rect;

    .line 74
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/a;->f:Landroid/graphics/Rect;

    .line 75
    iput-object p5, p0, Lcn/nubia/camera/three_a/ui/a;->n:Lcn/nubia/camera/three_a/ui/a$b;

    return-void
.end method

.method private a(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    return p1
.end method


# virtual methods
.method protected a(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    .line 100
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 101
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->g()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 102
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->g()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 103
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->g()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 105
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method a()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->g:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/graphics/Point;IILandroid/graphics/Rect;)V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->g()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->c()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    int-to-float p2, p2

    mul-float/2addr p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p3, p3

    mul-float/2addr v0, p3

    div-float/2addr v0, v1

    float-to-int p3, v0

    .line 89
    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v1}, Lcn/nubia/camera/three_a/a;->a(III)I

    move-result v0

    .line 90
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {p1, p3, v1}, Lcn/nubia/camera/three_a/a;->a(III)I

    move-result p1

    sub-int v1, v0, p2

    .line 92
    iput v1, p4, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, p3

    .line 93
    iput v1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    .line 94
    iput v0, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p3

    .line 95
    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$g;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/a;->e:Lcn/nubia/camera/three_a/ui/h$g;

    return-void
.end method

.method protected a([III)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 127
    aget v2, p1, v1

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->k()I

    move-result v2

    if-ge p2, v2, :cond_1

    aget p1, p1, v0

    sub-int/2addr p3, p1

    .line 128
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->k()I

    move-result p2

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method protected a(Lcn/nubia/camera/three_a/ui/g;)[I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 112
    check-cast p1, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/three_a/ui/ThreeAViewLayout;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 113
    aget v2, v1, p1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->i()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->i()I

    move-result v3

    div-int/2addr v3, v0

    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/three_a/ui/a;->a(II)I

    move-result v2

    aput v2, v1, p1

    const/4 p1, 0x1

    .line 114
    aget v2, v1, p1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->j()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/a;->j()I

    move-result v3

    div-int/2addr v3, v0

    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/three_a/ui/a;->a(II)I

    move-result v0

    aput v0, v1, p1

    return-object v1
.end method

.method b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/a;->j:Landroid/graphics/Rect;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/a;->l:Z

    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c(Landroid/graphics/Rect;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/a;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/a;->k:Z

    return-void
.end method

.method public d()I
    .locals 1

    .line 152
    invoke-static {}, Lcn/nubia/camera/three_a/a;->b()I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/a;->m:Z

    return-void
.end method

.method public e()I
    .locals 1

    .line 156
    invoke-static {}, Lcn/nubia/camera/three_a/a;->a()I

    move-result v0

    return v0
.end method

.method protected e(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->n:Lcn/nubia/camera/three_a/ui/a$b;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p1}, Lcn/nubia/camera/three_a/ui/a$b;->a(Z)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 160
    invoke-static {}, Lcn/nubia/camera/three_a/a;->d()I

    move-result v0

    return v0
.end method

.method protected f(Z)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->n:Lcn/nubia/camera/three_a/ui/a$b;

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0, p1}, Lcn/nubia/camera/three_a/ui/a$b;->b(Z)V

    :cond_0
    return-void
.end method

.method public g()Landroid/graphics/Rect;
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected g(Z)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->n:Lcn/nubia/camera/three_a/ui/a$b;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p1}, Lcn/nubia/camera/three_a/ui/a$b;->c(Z)V

    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    .line 168
    invoke-static {}, Lcn/nubia/camera/three_a/a;->c()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 172
    invoke-static {}, Lcn/nubia/camera/three_a/a;->f()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 176
    invoke-static {}, Lcn/nubia/camera/three_a/a;->e()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .line 180
    invoke-static {}, Lcn/nubia/camera/three_a/a;->g()I

    move-result v0

    return v0
.end method

.method protected l()Lcn/nubia/camera/ad/a;
    .locals 1

    .line 188
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->c:Lcn/nubia/camera/ad/a;

    return-object v0
.end method

.method protected m()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    .line 193
    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v1, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    .line 194
    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->d:Landroid/content/Context;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Context;J)V

    :cond_1
    return-void
.end method

.method protected n()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/a;->l:Z

    return v0
.end method

.method protected o()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/a;->k:Z

    return v0
.end method

.method protected p()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/a;->m:Z

    return v0
.end method

.method protected q()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->n:Lcn/nubia/camera/three_a/ui/a$b;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/a$b;->b()V

    :cond_0
    return-void
.end method

.method protected r()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->n:Lcn/nubia/camera/three_a/ui/a$b;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/a$b;->c()V

    :cond_0
    return-void
.end method

.method protected s()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a;->n:Lcn/nubia/camera/three_a/ui/a$b;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Lcn/nubia/camera/three_a/ui/a$b;->d()V

    :cond_0
    return-void
.end method
