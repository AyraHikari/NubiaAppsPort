.class public abstract Landroidx/constraintlayout/b/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/b/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/b/a/a/p$a;
    }
.end annotation


# instance fields
.field public c:I

.field d:Landroidx/constraintlayout/b/a/e;

.field e:Landroidx/constraintlayout/b/a/a/m;

.field protected f:Landroidx/constraintlayout/b/a/e$a;

.field g:Landroidx/constraintlayout/b/a/a/g;

.field public h:I

.field i:Z

.field public j:Landroidx/constraintlayout/b/a/a/f;

.field public k:Landroidx/constraintlayout/b/a/a/f;

.field protected l:Landroidx/constraintlayout/b/a/a/p$a;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/b/a/e;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/constraintlayout/b/a/a/g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/b/a/a/g;-><init>(Landroidx/constraintlayout/b/a/a/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/b/a/a/p;->h:I

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/p;->i:Z

    .line 38
    new-instance v0, Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/b/a/a/f;-><init>(Landroidx/constraintlayout/b/a/a/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    .line 39
    new-instance v0, Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/b/a/a/f;-><init>(Landroidx/constraintlayout/b/a/a/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    .line 41
    sget-object v0, Landroidx/constraintlayout/b/a/a/p$a;->a:Landroidx/constraintlayout/b/a/a/p$a;

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->l:Landroidx/constraintlayout/b/a/a/p$a;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    return-void
.end method

.method private b(II)V
    .locals 4

    .line 171
    iget v0, p0, Landroidx/constraintlayout/b/a/a/p;->c:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 p2, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_4

    .line 199
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/l;->c:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/n;->c:I

    if-ne v0, p2, :cond_1

    goto/16 :goto_4

    .line 205
    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    if-nez p1, :cond_2

    iget-object p2, p2, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    goto :goto_0

    :cond_2
    iget-object p2, p2, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    .line 206
    :goto_0
    iget-object v0, p2, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v0

    if-ne p1, v1, :cond_3

    .line 210
    iget-object p1, p2, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_1

    .line 212
    :cond_3
    iget-object p1, p2, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    float-to-int p1, v0

    .line 214
    :goto_1
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_4

    .line 177
    :cond_4
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_5

    .line 179
    iget-object p2, p2, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    goto :goto_2

    :cond_5
    iget-object p2, p2, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    .line 182
    :goto_2
    iget-object v0, p2, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    if-nez p1, :cond_6

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->q:F

    goto :goto_3

    :cond_6
    iget v0, v0, Landroidx/constraintlayout/b/a/e;->t:F

    .line 186
    :goto_3
    iget-object p2, p2, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p2, p2, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, v2

    float-to-int p2, p2

    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/b/a/a/p;->a(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_4

    .line 194
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/g;->m:I

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/b/a/a/p;->a(II)I

    move-result p1

    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_4

    .line 173
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/b/a/a/p;->a(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method protected final a(II)I
    .locals 1

    if-nez p2, :cond_1

    .line 234
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget p2, p2, Landroidx/constraintlayout/b/a/e;->p:I

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->o:I

    .line 236
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez p2, :cond_0

    .line 238
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 244
    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget p2, p2, Landroidx/constraintlayout/b/a/e;->s:I

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->r:I

    .line 246
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez p2, :cond_2

    .line 248
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    if-eq v0, p1, :cond_3

    :goto_0
    move p1, v0

    :cond_3
    return p1
.end method

.method protected final a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;
    .locals 3

    .line 95
    iget-object v0, p1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 100
    iget-object p1, p1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    .line 101
    sget-object v2, Landroidx/constraintlayout/b/a/a/p$1;->a:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d$a;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    .line 120
    iget-object v1, p1, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    .line 116
    iget-object v1, p1, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    .line 112
    iget-object v1, p1, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    goto :goto_0

    .line 107
    :cond_4
    iget-object p1, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    .line 108
    iget-object v1, p1, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    goto :goto_0

    .line 103
    :cond_5
    iget-object p1, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    .line 104
    iget-object v1, p1, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    :goto_0
    return-object v1
.end method

.method protected final a(Landroidx/constraintlayout/b/a/d;I)Landroidx/constraintlayout/b/a/a/f;
    .locals 2

    .line 258
    iget-object v0, p1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 262
    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    if-nez p2, :cond_1

    .line 263
    iget-object p2, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    goto :goto_0

    :cond_1
    iget-object p2, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    .line 265
    :goto_0
    iget-object p1, p1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    .line 266
    sget-object v0, Landroidx/constraintlayout/b/a/a/p$1;->a:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 273
    :cond_2
    iget-object v1, p2, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    goto :goto_1

    .line 269
    :cond_3
    iget-object v1, p2, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    :goto_1
    return-object v1
.end method

.method public a(Landroidx/constraintlayout/b/a/a/d;)V
    .locals 0

    return-void
.end method

.method protected a(Landroidx/constraintlayout/b/a/a/d;Landroidx/constraintlayout/b/a/d;Landroidx/constraintlayout/b/a/d;I)V
    .locals 4

    .line 127
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/b/a/a/p;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/b/a/a/p;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    .line 130
    iget-boolean v1, p1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget v1, p1, Landroidx/constraintlayout/b/a/a/f;->g:I

    invoke-virtual {p2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result p2

    add-int/2addr v1, p2

    .line 135
    iget p2, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    invoke-virtual {p3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    .line 138
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v2, v2, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/p;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v2, v3, :cond_1

    .line 140
    invoke-direct {p0, p4, p3}, Landroidx/constraintlayout/b/a/a/p;->b(II)V

    .line 143
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v2, v2, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v2, :cond_2

    return-void

    .line 147
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    if-ne v2, p3, :cond_3

    .line 148
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 149
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    return-void

    .line 154
    :cond_3
    iget-object p3, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    if-nez p4, :cond_4

    invoke-virtual {p3}, Landroidx/constraintlayout/b/a/e;->I()F

    move-result p3

    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {p3}, Landroidx/constraintlayout/b/a/e;->J()F

    move-result p3

    :goto_0
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5

    .line 158
    iget v1, p1, Landroidx/constraintlayout/b/a/a/f;->g:I

    .line 159
    iget p2, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    move p3, p4

    :cond_5
    sub-int/2addr p2, v1

    .line 165
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->g:I

    sub-int/2addr p2, p1

    .line 166
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 167
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    iget p2, p2, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object p3, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p3, p3, Landroidx/constraintlayout/b/a/a/g;->g:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected final a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V
    .locals 1

    .line 280
    iget-object v0, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iput p3, p1, Landroidx/constraintlayout/b/a/a/f;->f:I

    .line 282
    iget-object p2, p2, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V
    .locals 2

    .line 286
    iget-object v0, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iput p3, p1, Landroidx/constraintlayout/b/a/a/f;->h:I

    .line 289
    iput-object p4, p1, Landroidx/constraintlayout/b/a/a/f;->i:Landroidx/constraintlayout/b/a/a/g;

    .line 290
    iget-object p2, p2, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p2, p4, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract a()Z
.end method

.method public b()J
    .locals 2

    .line 295
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected b(Landroidx/constraintlayout/b/a/a/d;)V
    .locals 0

    return-void
.end method

.method abstract c()V
.end method

.method protected c(Landroidx/constraintlayout/b/a/a/d;)V
    .locals 0

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method public g()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Landroidx/constraintlayout/b/a/a/p;->i:Z

    return v0
.end method
