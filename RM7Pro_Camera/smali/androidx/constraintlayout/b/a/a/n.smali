.class public Landroidx/constraintlayout/b/a/a/n;
.super Landroidx/constraintlayout/b/a/a/p;
.source "SourceFile"


# instance fields
.field public a:Landroidx/constraintlayout/b/a/a/f;

.field b:Landroidx/constraintlayout/b/a/a/g;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/b/a/e;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/a/a/p;-><init>(Landroidx/constraintlayout/b/a/e;)V

    .line 34
    new-instance p1, Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/b/a/a/f;-><init>(Landroidx/constraintlayout/b/a/a/p;)V

    iput-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    .line 39
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    sget-object v0, Landroidx/constraintlayout/b/a/a/f$a;->f:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v0, p1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    .line 40
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    sget-object v0, Landroidx/constraintlayout/b/a/a/f$a;->g:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v0, p1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    .line 41
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    sget-object v0, Landroidx/constraintlayout/b/a/a/f$a;->h:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v0, p1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Landroidx/constraintlayout/b/a/a/n;->h:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/b/a/a/d;)V
    .locals 6

    .line 85
    sget-object v0, Landroidx/constraintlayout/b/a/a/n$1;->a:[I

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->l:Landroidx/constraintlayout/b/a/a/p$a;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/p$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {p0, p1, v0, v1, v3}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/d;Landroidx/constraintlayout/b/a/d;Landroidx/constraintlayout/b/a/d;I)V

    return-void

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/a/a/n;->c(Landroidx/constraintlayout/b/a/a/d;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/a/a/n;->b(Landroidx/constraintlayout/b/a/a/d;)V

    .line 98
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/g;->c:Z

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez p1, :cond_8

    .line 99
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne p1, v5, :cond_8

    .line 100
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget p1, p1, Landroidx/constraintlayout/b/a/e;->m:I

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_3

    goto/16 :goto_4

    .line 102
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz p1, :cond_8

    .line 104
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->O()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    move p1, v4

    goto :goto_3

    .line 110
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float p1, p1

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v1

    goto :goto_1

    .line 107
    :cond_5
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float p1, p1

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v1

    mul-float/2addr p1, v1

    goto :goto_2

    .line 113
    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float p1, p1

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v1

    :goto_1
    div-float/2addr p1, v1

    :goto_2
    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 116
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_4

    .line 120
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 122
    iget-object v1, p1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v1, v1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz v1, :cond_8

    .line 123
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget v1, v1, Landroidx/constraintlayout/b/a/e;->t:F

    .line 124
    iget-object p1, p1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->g:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 126
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 134
    :cond_8
    :goto_4
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-nez p1, :cond_9

    goto/16 :goto_6

    .line 137
    :cond_9
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz p1, :cond_a

    return-void

    .line 141
    :cond_a
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget p1, p1, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez p1, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    .line 144
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result p1

    if-nez p1, :cond_b

    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/b/a/a/f;

    .line 147
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/f;

    .line 148
    iget p1, p1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr p1, v1

    .line 149
    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v0, v1

    sub-int v1, v0, p1

    .line 152
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 153
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 154
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    return-void

    .line 158
    :cond_b
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne p1, v1, :cond_d

    iget p1, p0, Landroidx/constraintlayout/b/a/a/n;->c:I

    if-ne p1, v3, :cond_d

    .line 161
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 162
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/b/a/a/f;

    .line 163
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    .line 164
    iget p1, p1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr p1, v2

    .line 165
    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 167
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->m:I

    if-ge v1, p1, :cond_c

    .line 168
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_5

    .line 170
    :cond_c
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/g;->m:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 175
    :cond_d
    :goto_5
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez p1, :cond_e

    return-void

    .line 179
    :cond_e
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 180
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/b/a/a/f;

    .line 181
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    .line 182
    iget v2, p1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v3, v3, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v2, v3

    .line 183
    iget v3, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget v4, v4, Landroidx/constraintlayout/b/a/a/f;->f:I

    add-int/2addr v3, v4

    .line 184
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/e;->J()F

    move-result v4

    if-ne p1, v1, :cond_f

    .line 186
    iget v2, p1, Landroidx/constraintlayout/b/a/a/f;->g:I

    .line 187
    iget v3, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    move v4, v0

    :cond_f
    sub-int/2addr v3, v2

    .line 192
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget p1, p1, Landroidx/constraintlayout/b/a/a/g;->g:I

    sub-int/2addr v3, p1

    .line 193
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    int-to-float v1, v2

    add-float/2addr v1, v0

    int-to-float v0, v3

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 194
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v0, v0, Landroidx/constraintlayout/b/a/a/f;->g:I

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/g;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method a()Z
    .locals 3

    .line 74
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->m:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->e:Landroidx/constraintlayout/b/a/a/m;

    .line 53
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/g;->a()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/n;->i:Z

    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/n;->i:Z

    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v0, v1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    .line 65
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v0, v1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    .line 67
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/f;->a()V

    .line 68
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v0, v1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    .line 69
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v0, v1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 424
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->n(I)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 7

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/e;->b:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v0, :cond_3

    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->f:Landroidx/constraintlayout/b/a/e$a;

    .line 205
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Landroidx/constraintlayout/b/a/a/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/b/a/a/a;-><init>(Landroidx/constraintlayout/b/a/a/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    .line 208
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/p;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-eq v0, v1, :cond_4

    .line 209
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_2

    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v2, :cond_2

    .line 212
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    sub-int/2addr v1, v2

    .line 213
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 214
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 215
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_4

    .line 220
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_4

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 226
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v2, :cond_4

    .line 227
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 228
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    return-void

    .line 242
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/e;->b:Z

    if-eqz v0, :cond_d

    .line 243
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_8

    .line 244
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    .line 246
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    goto :goto_1

    .line 248
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 250
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 252
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 254
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 256
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v3, v0, Landroidx/constraintlayout/b/a/a/f;->b:Z

    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v3, v0, Landroidx/constraintlayout/b/a/a/f;->b:Z

    .line 259
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    goto/16 :goto_5

    .line 262
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 265
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 266
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 267
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    goto/16 :goto_5

    .line 271
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_b

    .line 272
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 274
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 277
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    goto/16 :goto_5

    .line 280
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_c

    .line 281
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 283
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p0, v2, v0, v1}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 284
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 285
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    goto/16 :goto_5

    .line 289
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/b/a/i;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->g:Landroidx/constraintlayout/b/a/d$a;

    .line 290
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v0, :cond_1c

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    .line 292
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->z()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 293
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 294
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 295
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    goto/16 :goto_5

    .line 300
    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v6, :cond_12

    .line 301
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->m:I

    if-eq v0, v4, :cond_10

    if-eq v0, v5, :cond_e

    goto :goto_2

    .line 303
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v0

    if-nez v0, :cond_13

    .line 304
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget v0, v0, Landroidx/constraintlayout/b/a/e;->l:I

    if-ne v0, v5, :cond_f

    goto :goto_2

    .line 310
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    .line 311
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v3, v0, Landroidx/constraintlayout/b/a/a/g;->b:Z

    .line 314
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 320
    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_2

    .line 324
    :cond_11
    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    .line 325
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v3, v0, Landroidx/constraintlayout/b/a/a/g;->b:Z

    .line 328
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 336
    :cond_12
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/b/a/a/g;->b(Landroidx/constraintlayout/b/a/a/d;)V

    .line 338
    :cond_13
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_15

    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 340
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    .line 341
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    goto :goto_3

    .line 343
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    .line 344
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v1

    .line 353
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/b/a/a/f;->b(Landroidx/constraintlayout/b/a/a/d;)V

    .line 354
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/b/a/a/f;->b(Landroidx/constraintlayout/b/a/a/d;)V

    .line 356
    sget-object v0, Landroidx/constraintlayout/b/a/a/p$a;->d:Landroidx/constraintlayout/b/a/a/p$a;

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->l:Landroidx/constraintlayout/b/a/a/p$a;

    .line 358
    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 359
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    goto/16 :goto_4

    .line 361
    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    const/4 v6, 0x0

    if-eqz v0, :cond_17

    .line 362
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 364
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 365
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    .line 366
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 367
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    .line 369
    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_1b

    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1b

    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_1b

    .line 372
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-object p0, v0, Landroidx/constraintlayout/b/a/a/g;->a:Landroidx/constraintlayout/b/a/a/d;

    goto/16 :goto_4

    .line 379
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    const/4 v4, -0x1

    if-eqz v0, :cond_18

    .line 380
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 382
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v4, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    .line 384
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 385
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    goto/16 :goto_4

    .line 388
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_19

    .line 389
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/d;)Landroidx/constraintlayout/b/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 391
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p0, v2, v0, v1}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 392
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v4, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    goto :goto_4

    .line 397
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/b/a/i;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 398
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    .line 399
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->z()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;I)V

    .line 400
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    .line 401
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 402
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/constraintlayout/b/a/a/n;->a(Landroidx/constraintlayout/b/a/a/f;Landroidx/constraintlayout/b/a/a/f;ILandroidx/constraintlayout/b/a/a/g;)V

    .line 404
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_1b

    .line 405
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1b

    .line 406
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v0, v1, :cond_1b

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-object p0, v0, Landroidx/constraintlayout/b/a/a/g;->a:Landroidx/constraintlayout/b/a/a/d;

    .line 417
    :cond_1b
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 418
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v3, v0, Landroidx/constraintlayout/b/a/a/g;->c:Z

    :cond_1c
    :goto_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerticalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/n;->d:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
