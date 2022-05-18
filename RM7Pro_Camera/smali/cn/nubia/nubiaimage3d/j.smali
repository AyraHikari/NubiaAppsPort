.class public Lcn/nubia/nubiaimage3d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/nubiaimage3d/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/nubiaimage3d/j$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/nubiaimage3d/c;

.field private b:Lcn/nubia/nubiaimage3d/b;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:J

.field private n:I

.field private o:Lcn/nubia/nubiaimage3d/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/j;->a:Lcn/nubia/nubiaimage3d/c;

    .line 29
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcn/nubia/nubiaimage3d/j;->c:Z

    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p0, Lcn/nubia/nubiaimage3d/j;->d:Z

    .line 33
    iput-boolean v1, p0, Lcn/nubia/nubiaimage3d/j;->e:Z

    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lcn/nubia/nubiaimage3d/j;->f:F

    .line 36
    iput v2, p0, Lcn/nubia/nubiaimage3d/j;->g:F

    .line 37
    iput v2, p0, Lcn/nubia/nubiaimage3d/j;->h:F

    .line 38
    iput v2, p0, Lcn/nubia/nubiaimage3d/j;->i:F

    .line 39
    iput v2, p0, Lcn/nubia/nubiaimage3d/j;->j:F

    .line 40
    iput v2, p0, Lcn/nubia/nubiaimage3d/j;->k:F

    .line 41
    iput v1, p0, Lcn/nubia/nubiaimage3d/j;->l:I

    const-wide/16 v2, 0x0

    .line 42
    iput-wide v2, p0, Lcn/nubia/nubiaimage3d/j;->m:J

    .line 44
    iput v1, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    .line 45
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    .line 47
    new-instance v0, Lcn/nubia/nubiaimage3d/c;

    invoke-direct {v0, p1}, Lcn/nubia/nubiaimage3d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/nubiaimage3d/j;->a:Lcn/nubia/nubiaimage3d/c;

    .line 48
    new-instance p1, Lcn/nubia/nubiaimage3d/b;

    invoke-direct {p1}, Lcn/nubia/nubiaimage3d/b;-><init>()V

    iput-object p1, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    .line 50
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->a:Lcn/nubia/nubiaimage3d/c;

    invoke-virtual {p1, v1}, Lcn/nubia/nubiaimage3d/c;->a(I)V

    .line 51
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->a:Lcn/nubia/nubiaimage3d/c;

    invoke-virtual {p1, p0}, Lcn/nubia/nubiaimage3d/c;->a(Lcn/nubia/nubiaimage3d/c$a;)V

    return-void
.end method

.method private b(FFFFFF)Z
    .locals 3

    .line 102
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/j;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 103
    iput-boolean v1, p0, Lcn/nubia/nubiaimage3d/j;->d:Z

    .line 104
    iput p2, p0, Lcn/nubia/nubiaimage3d/j;->i:F

    .line 105
    iput p4, p0, Lcn/nubia/nubiaimage3d/j;->j:F

    .line 106
    iput p6, p0, Lcn/nubia/nubiaimage3d/j;->k:F

    .line 107
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcn/nubia/nubiaimage3d/b;->a(FF)V

    .line 108
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p1, v1}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/nubiaimage3d/j;->m:J

    return v2

    .line 114
    :cond_0
    iget-object p6, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    iget v0, p0, Lcn/nubia/nubiaimage3d/j;->i:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcn/nubia/nubiaimage3d/j;->j:F

    sub-float/2addr p4, v0

    invoke-virtual {p6, p2, p4}, Lcn/nubia/nubiaimage3d/b;->a(FF)V

    .line 118
    iget p2, p0, Lcn/nubia/nubiaimage3d/j;->f:F

    add-float/2addr p2, p1

    iput p2, p0, Lcn/nubia/nubiaimage3d/j;->f:F

    .line 119
    iget p1, p0, Lcn/nubia/nubiaimage3d/j;->g:F

    add-float/2addr p1, p3

    iput p1, p0, Lcn/nubia/nubiaimage3d/j;->g:F

    .line 120
    iget p1, p0, Lcn/nubia/nubiaimage3d/j;->h:F

    add-float/2addr p1, p5

    iput p1, p0, Lcn/nubia/nubiaimage3d/j;->h:F

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcn/nubia/nubiaimage3d/j;->m:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x21

    cmp-long p1, p1, p3

    if-gez p1, :cond_1

    return v1

    .line 127
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/nubiaimage3d/j;->c:Z

    const p2, 0x3e99999a    # 0.3f

    const/high16 p3, 0x40400000    # 3.0f

    if-nez p1, :cond_4

    .line 129
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    invoke-virtual {p1}, Lcn/nubia/nubiaimage3d/b;->a()F

    move-result p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_2

    .line 130
    iput-boolean v2, p0, Lcn/nubia/nubiaimage3d/j;->c:Z

    .line 131
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/j;->f()V

    const-string p1, "TakenPictureController"

    const-string p2, "=====HAS GOT THE DIRECTION===="

    .line 132
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    invoke-virtual {p1}, Lcn/nubia/nubiaimage3d/b;->b()I

    move-result p1

    iput p1, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    .line 134
    iget-object p2, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p2, p1}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/nubiaimage3d/j;->m:J

    return v2

    .line 139
    :cond_2
    iget p1, p0, Lcn/nubia/nubiaimage3d/j;->f:F

    mul-float/2addr p1, p1

    iget p3, p0, Lcn/nubia/nubiaimage3d/j;->g:F

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    iget p3, p0, Lcn/nubia/nubiaimage3d/j;->h:F

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    float-to-double p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-float p1, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 141
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/j;->f()V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/nubiaimage3d/j;->m:J

    return v2

    :cond_3
    return v1

    .line 150
    :cond_4
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    invoke-virtual {p1}, Lcn/nubia/nubiaimage3d/b;->b()I

    move-result p1

    const p4, -0x41666666    # -0.3f

    const/4 p5, -0x1

    if-eq p1, v2, :cond_b

    const/4 p6, 0x2

    const/high16 v0, -0x3fc00000    # -3.0f

    if-eq p1, p6, :cond_9

    const/4 p6, 0x3

    if-eq p1, p6, :cond_7

    const/4 p2, 0x4

    if-eq p1, p2, :cond_5

    goto/16 :goto_1

    .line 188
    :cond_5
    iget p2, p0, Lcn/nubia/nubiaimage3d/j;->f:F

    cmpg-float p4, p2, p4

    if-gtz p4, :cond_6

    .line 190
    iget p2, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    if-eq p2, p1, :cond_c

    .line 191
    iget-object p2, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p2, p1}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    .line 192
    iput p1, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    goto :goto_0

    :cond_6
    cmpl-float p1, p2, p3

    if-ltz p1, :cond_e

    .line 195
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p1, p5}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    goto :goto_1

    .line 177
    :cond_7
    iget p3, p0, Lcn/nubia/nubiaimage3d/j;->f:F

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_8

    .line 179
    iget p2, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    if-eq p2, p1, :cond_c

    .line 180
    iget-object p2, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p2, p1}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    .line 181
    iput p1, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    goto :goto_0

    :cond_8
    cmpg-float p1, p3, v0

    if-gtz p1, :cond_e

    .line 184
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p1, p5}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    goto :goto_1

    .line 166
    :cond_9
    iget p3, p0, Lcn/nubia/nubiaimage3d/j;->g:F

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_a

    .line 168
    iget p2, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    if-eq p2, p1, :cond_c

    .line 169
    iget-object p2, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p2, p1}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    .line 170
    iput p1, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    goto :goto_0

    :cond_a
    cmpg-float p1, p3, v0

    if-gtz p1, :cond_e

    .line 173
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p1, p5}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    goto :goto_1

    .line 155
    :cond_b
    iget p2, p0, Lcn/nubia/nubiaimage3d/j;->g:F

    cmpg-float p4, p2, p4

    if-gtz p4, :cond_d

    .line 157
    iget p2, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    if-eq p2, p1, :cond_c

    .line 158
    iget-object p2, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p2, p1}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    .line 159
    iput p1, p0, Lcn/nubia/nubiaimage3d/j;->n:I

    :cond_c
    :goto_0
    move p1, v2

    goto :goto_2

    :cond_d
    cmpl-float p1, p2, p3

    if-ltz p1, :cond_e

    .line 162
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p1, p5}, Lcn/nubia/nubiaimage3d/j$a;->b(I)V

    :cond_e
    :goto_1
    move p1, v1

    :goto_2
    if-eqz p1, :cond_f

    .line 202
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/j;->f()V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/nubiaimage3d/j;->m:J

    return v2

    :cond_f
    return v1
.end method

.method private e()V
    .locals 1

    .line 210
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/j;->f()V

    .line 211
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/b;->c()V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/j;->d:Z

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/j;->c:Z

    .line 214
    iput v0, p0, Lcn/nubia/nubiaimage3d/j;->l:I

    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lcn/nubia/nubiaimage3d/j;->i:F

    .line 216
    iput v0, p0, Lcn/nubia/nubiaimage3d/j;->j:F

    .line 217
    iput v0, p0, Lcn/nubia/nubiaimage3d/j;->k:F

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcn/nubia/nubiaimage3d/j;->f:F

    .line 222
    iput v0, p0, Lcn/nubia/nubiaimage3d/j;->g:F

    .line 223
    iput v0, p0, Lcn/nubia/nubiaimage3d/j;->h:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/j;->e:Z

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/j;->e()V

    const-string v0, "TakenPictureController"

    const-string v1, "start"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/j;->a:Lcn/nubia/nubiaimage3d/c;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/c;->a()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/j;->e:Z

    :cond_0
    return-void
.end method

.method public a(FFFFFF)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcn/nubia/nubiaimage3d/j;->b(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    iget p1, p0, Lcn/nubia/nubiaimage3d/j;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/nubiaimage3d/j;->l:I

    .line 85
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    invoke-interface {p1}, Lcn/nubia/nubiaimage3d/j$a;->i()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/nubiaimage3d/j$a;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/nubia/nubiaimage3d/j;->o:Lcn/nubia/nubiaimage3d/j$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/j;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "TakenPictureController"

    const-string v1, "stop"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/j;->a:Lcn/nubia/nubiaimage3d/c;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/c;->b()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/j;->e:Z

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/b;->b()I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/j;->b:Lcn/nubia/nubiaimage3d/b;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/b;->a()F

    move-result v0

    return v0
.end method
