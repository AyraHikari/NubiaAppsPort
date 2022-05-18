.class public Lcn/nubia/camera/zoom/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Lcn/nubia/camera/zoom/b;

.field private g:Lcn/nubia/camera/d/a;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Z


# direct methods
.method public constructor <init>(FFLcn/nubia/camera/d/a;F)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcn/nubia/camera/zoom/a;->a:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcn/nubia/camera/zoom/a;->b:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 39
    iput v0, p0, Lcn/nubia/camera/zoom/a;->c:F

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/a;->d:Z

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcn/nubia/camera/zoom/a;->e:Z

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcn/nubia/camera/zoom/a;->f:Lcn/nubia/camera/zoom/b;

    .line 206
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/a;->m:Z

    .line 50
    iput p1, p0, Lcn/nubia/camera/zoom/a;->i:F

    .line 51
    iput p2, p0, Lcn/nubia/camera/zoom/a;->j:F

    .line 52
    iput p1, p0, Lcn/nubia/camera/zoom/a;->k:F

    .line 53
    iput p2, p0, Lcn/nubia/camera/zoom/a;->l:F

    .line 54
    iput-object p3, p0, Lcn/nubia/camera/zoom/a;->g:Lcn/nubia/camera/d/a;

    .line 55
    iput p4, p0, Lcn/nubia/camera/zoom/a;->h:F

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private a(Lcn/nubia/camera/ad/a;)V
    .locals 4

    .line 218
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_3

    .line 220
    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 221
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 222
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    .line 223
    iput p1, p0, Lcn/nubia/camera/zoom/a;->k:F

    .line 224
    iput v1, p0, Lcn/nubia/camera/zoom/a;->l:F

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 226
    iput p1, p0, Lcn/nubia/camera/zoom/a;->k:F

    .line 227
    iput v2, p0, Lcn/nubia/camera/zoom/a;->l:F

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    .line 229
    iput p1, p0, Lcn/nubia/camera/zoom/a;->k:F

    .line 230
    iput v2, p0, Lcn/nubia/camera/zoom/a;->l:F

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 232
    iput v1, p0, Lcn/nubia/camera/zoom/a;->k:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 233
    iput p1, p0, Lcn/nubia/camera/zoom/a;->l:F

    goto :goto_0

    .line 236
    :cond_3
    iget p1, p0, Lcn/nubia/camera/zoom/a;->i:F

    iput p1, p0, Lcn/nubia/camera/zoom/a;->k:F

    .line 237
    iget p1, p0, Lcn/nubia/camera/zoom/a;->j:F

    iput p1, p0, Lcn/nubia/camera/zoom/a;->l:F

    :cond_4
    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 208
    iget-boolean v0, p0, Lcn/nubia/camera/zoom/a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/a;->m:Z

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "zoom_type"

    const-string v2, "gesture"

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {v0}, Lcn/nubia/camera/ba/g;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method private b(F)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/zoom/a;->f:Lcn/nubia/camera/zoom/b;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p1}, Lcn/nubia/camera/zoom/b;->a(F)V

    :cond_0
    return-void
.end method

.method private c(F)V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/zoom/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "DoubleGestureZoom"

    const-string v0, "Can\'t zoomIn because is taking picture."

    .line 82
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_0
    iget v0, p0, Lcn/nubia/camera/zoom/a;->h:F

    invoke-direct {p0, v0}, Lcn/nubia/camera/zoom/a;->d(F)F

    move-result v0

    mul-float/2addr v0, p1

    .line 86
    iget p1, p0, Lcn/nubia/camera/zoom/a;->h:F

    add-float v1, v0, p1

    iget v2, p0, Lcn/nubia/camera/zoom/a;->k:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 87
    iput v2, p0, Lcn/nubia/camera/zoom/a;->h:F

    goto :goto_0

    :cond_1
    add-float v1, v0, p1

    .line 88
    iget v2, p0, Lcn/nubia/camera/zoom/a;->l:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 89
    iput v2, p0, Lcn/nubia/camera/zoom/a;->h:F

    goto :goto_0

    :cond_2
    add-float/2addr p1, v0

    .line 91
    iput p1, p0, Lcn/nubia/camera/zoom/a;->h:F

    .line 93
    :goto_0
    iget p1, p0, Lcn/nubia/camera/zoom/a;->h:F

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/a;->b(F)V

    return-void
.end method

.method private d(F)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_2
    const p1, 0x3d4ccccd    # 0.05f

    :goto_0
    return p1
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 67
    iput p1, p0, Lcn/nubia/camera/zoom/a;->h:F

    return-void
.end method

.method public a(FFF)V
    .locals 0

    .line 59
    iput p1, p0, Lcn/nubia/camera/zoom/a;->i:F

    .line 60
    iput p2, p0, Lcn/nubia/camera/zoom/a;->j:F

    .line 61
    iput p1, p0, Lcn/nubia/camera/zoom/a;->k:F

    .line 62
    iput p2, p0, Lcn/nubia/camera/zoom/a;->l:F

    .line 63
    iput p3, p0, Lcn/nubia/camera/zoom/a;->h:F

    return-void
.end method

.method public a(Lcn/nubia/camera/zoom/b;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/zoom/a;->f:Lcn/nubia/camera/zoom/b;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/a;->d:Z

    return-void
.end method

.method public a()Z
    .locals 3

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/zoom/a;->g:Lcn/nubia/camera/d/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/a;->g:Lcn/nubia/camera/d/a;

    .line 182
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/a;->g:Lcn/nubia/camera/d/a;

    .line 183
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->f:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/a;->g:Lcn/nubia/camera/d/a;

    .line 184
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/a;->g:Lcn/nubia/camera/d/a;

    .line 185
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->i:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/zoom/a;->g:Lcn/nubia/camera/d/a;

    .line 186
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/e;->g:Lcn/nubia/camera/d/e;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/zoom/a;->g:Lcn/nubia/camera/d/a;

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p3, :cond_e

    .line 97
    iget-boolean v1, p0, Lcn/nubia/camera/zoom/a;->e:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    .line 100
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 102
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, -0x1

    if-eq v4, v3, :cond_c

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    if-eq v4, v2, :cond_c

    const/4 p2, 0x5

    if-eq v4, p2, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v1, v6, :cond_2

    .line 104
    iget-boolean p2, p0, Lcn/nubia/camera/zoom/a;->d:Z

    if-eqz p2, :cond_2

    .line 105
    iput v0, p0, Lcn/nubia/camera/zoom/a;->a:I

    .line 106
    invoke-direct {p0, p3}, Lcn/nubia/camera/zoom/a;->a(Landroid/view/MotionEvent;)F

    move-result p2

    iput p2, p0, Lcn/nubia/camera/zoom/a;->b:F

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/a;->a(Lcn/nubia/camera/ad/a;)V

    .line 109
    :cond_2
    iget p1, p0, Lcn/nubia/camera/zoom/a;->a:I

    if-nez p1, :cond_3

    move v0, v3

    :cond_3
    if-nez p1, :cond_e

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/zoom/a;->b()V

    goto/16 :goto_4

    .line 116
    :cond_4
    iget v2, p0, Lcn/nubia/camera/zoom/a;->a:I

    if-nez v2, :cond_b

    if-ne v1, v6, :cond_b

    if-eqz p2, :cond_a

    .line 117
    invoke-virtual {p2}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 119
    :cond_5
    invoke-virtual {p2}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v1

    const v2, 0x7f0f0196

    if-eqz v1, :cond_7

    .line 120
    invoke-virtual {p2}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object p2

    .line 121
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Context;Landroid/util/Size;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 123
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p3

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 125
    :cond_6
    iput v5, p0, Lcn/nubia/camera/zoom/a;->a:I

    goto :goto_1

    .line 126
    :cond_7
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/nubia/camera/aq/f;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 127
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const v4, 0x7f0f028e

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p3, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 128
    iput v5, p0, Lcn/nubia/camera/zoom/a;->a:I

    goto :goto_1

    .line 130
    :cond_8
    invoke-direct {p0, p3}, Lcn/nubia/camera/zoom/a;->a(Landroid/view/MotionEvent;)F

    move-result p1

    .line 131
    iget p2, p0, Lcn/nubia/camera/zoom/a;->b:F

    sub-float p2, p1, p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_9

    .line 133
    iget p3, p0, Lcn/nubia/camera/zoom/a;->c:F

    div-float/2addr p2, p3

    invoke-direct {p0, p2}, Lcn/nubia/camera/zoom/a;->c(F)V

    .line 135
    :cond_9
    iput p1, p0, Lcn/nubia/camera/zoom/a;->b:F

    goto :goto_1

    .line 118
    :cond_a
    :goto_0
    iput v5, p0, Lcn/nubia/camera/zoom/a;->a:I

    .line 138
    :cond_b
    :goto_1
    iget p1, p0, Lcn/nubia/camera/zoom/a;->a:I

    if-nez p1, :cond_e

    goto :goto_3

    .line 144
    :cond_c
    iget p1, p0, Lcn/nubia/camera/zoom/a;->a:I

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    move v3, v0

    .line 145
    :goto_2
    iput v5, p0, Lcn/nubia/camera/zoom/a;->a:I

    .line 146
    iput-boolean v0, p0, Lcn/nubia/camera/zoom/a;->d:Z

    :goto_3
    move v0, v3

    :cond_e
    :goto_4
    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcn/nubia/camera/zoom/a;->e:Z

    return-void
.end method
