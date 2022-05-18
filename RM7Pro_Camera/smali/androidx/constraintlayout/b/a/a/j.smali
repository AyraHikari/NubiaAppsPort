.class Landroidx/constraintlayout/b/a/a/j;
.super Landroidx/constraintlayout/b/a/a/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/b/a/e;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/a/a/p;-><init>(Landroidx/constraintlayout/b/a/e;)V

    .line 26
    iget-object v0, p1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/l;->c()V

    .line 27
    iget-object v0, p1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/n;->c()V

    .line 28
    check-cast p1, Landroidx/constraintlayout/b/a/h;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/b/a/a/j;->h:I

    return-void
.end method

.method private a(Landroidx/constraintlayout/b/a/a/f;)V
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/b/a/a/d;)V
    .locals 2

    .line 54
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/f;->c:Z

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean p1, p1, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-eqz p1, :cond_1

    return-void

    .line 61
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/b/a/a/f;

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    check-cast v0, Landroidx/constraintlayout/b/a/h;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 63
    iget p1, p1, Landroidx/constraintlayout/b/a/a/f;->g:I

    int-to-float p1, p1

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/h;->f()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    return-void
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method c()V
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/f;->a()V

    return-void
.end method

.method d()V
    .locals 2

    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->k:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v1, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 112
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    check-cast v0, Landroidx/constraintlayout/b/a/h;

    .line 113
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->m(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->n(I)V

    :goto_0
    return-void
.end method

.method f()V
    .locals 5

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    check-cast v0, Landroidx/constraintlayout/b/a/h;

    .line 70
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/h;->g()I

    move-result v1

    .line 71
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/h;->h()I

    move-result v2

    .line 72
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/h;->f()F

    .line 73
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/h;->c()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v0, v3, :cond_2

    if-eq v1, v4, :cond_0

    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    goto :goto_0

    :cond_0
    if-eq v2, v4, :cond_1

    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    neg-int v1, v2

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v3, v0, Landroidx/constraintlayout/b/a/a/f;->b:Z

    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/j;->a(Landroidx/constraintlayout/b/a/a/f;)V

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/j;->a(Landroidx/constraintlayout/b/a/a/f;)V

    goto/16 :goto_2

    :cond_2
    if-eq v1, v4, :cond_3

    .line 92
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    goto :goto_1

    :cond_3
    if-eq v2, v4, :cond_4

    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    neg-int v1, v2

    iput v1, v0, Landroidx/constraintlayout/b/a/a/f;->f:I

    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iput-boolean v3, v0, Landroidx/constraintlayout/b/a/a/f;->b:Z

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/j;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/j;->a(Landroidx/constraintlayout/b/a/a/f;)V

    .line 106
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/j;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/j;->a(Landroidx/constraintlayout/b/a/a/f;)V

    :goto_2
    return-void
.end method
