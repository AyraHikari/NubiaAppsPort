.class Landroidx/constraintlayout/b/a/a/k;
.super Landroidx/constraintlayout/b/a/a/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/b/a/e;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/a/a/p;-><init>(Landroidx/constraintlayout/b/a/e;)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/b/a/a/f;)V
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/b/a/a/d;)V
    .locals 6

    .line 122
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    check-cast p1, Landroidx/constraintlayout/b/a/a;

    .line 123
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/a;->b()I

    move-result v0

    .line 127
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/a/f;

    .line 128
    iget v5, v5, Landroidx/constraintlayout/b/a/a/f;->g:I

    if-eq v4, v2, :cond_1

    if-ge v5, v4, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    if-ge v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/a;->g()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    goto :goto_2

    .line 137
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/a;->g()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    :goto_2
    return-void
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->e:Landroidx/constraintlayout/b/a/a/m;

    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/f;->a()V

    return-void
.end method

.method d()V
    .locals 2

    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/b/a/a/f;->j:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/b/a/a;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    check-cast v0, Landroidx/constraintlayout/b/a/a;

    .line 146
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->n(I)V

    goto :goto_1

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/b/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->m(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method f()V
    .locals 7

    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/b/a/a;

    if-eqz v0, :cond_c

    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/b/a/a/f;->b:Z

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    check-cast v0, Landroidx/constraintlayout/b/a/a;

    .line 53
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a;->b()I

    move-result v2

    .line 54
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a;->c()Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    if-eq v2, v1, :cond_6

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    goto/16 :goto_8

    .line 102
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    sget-object v2, Landroidx/constraintlayout/b/a/a/f$a;->g:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v2, v1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    .line 103
    :goto_0
    iget v1, v0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v5, v1, :cond_2

    .line 104
    iget-object v1, v0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    .line 109
    iget-object v2, v1, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/k;->a(Landroidx/constraintlayout/b/a/a/f;)V

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/k;->a(Landroidx/constraintlayout/b/a/a/f;)V

    goto/16 :goto_8

    .line 87
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    sget-object v2, Landroidx/constraintlayout/b/a/a/f$a;->f:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v2, v1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    .line 88
    :goto_2
    iget v1, v0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v5, v1, :cond_5

    .line 89
    iget-object v1, v0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_4

    .line 90
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v2

    if-ne v2, v4, :cond_4

    goto :goto_3

    .line 93
    :cond_4
    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    .line 94
    iget-object v2, v1, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 98
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/k;->a(Landroidx/constraintlayout/b/a/a/f;)V

    .line 99
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/k;->a(Landroidx/constraintlayout/b/a/a/f;)V

    goto/16 :goto_8

    .line 72
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    sget-object v2, Landroidx/constraintlayout/b/a/a/f$a;->e:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v2, v1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    .line 73
    :goto_4
    iget v1, v0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v5, v1, :cond_8

    .line 74
    iget-object v1, v0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_7

    .line 75
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v2

    if-ne v2, v4, :cond_7

    goto :goto_5

    .line 78
    :cond_7
    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    .line 79
    iget-object v2, v1, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 83
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/k;->a(Landroidx/constraintlayout/b/a/a/f;)V

    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/k;->a(Landroidx/constraintlayout/b/a/a/f;)V

    goto :goto_8

    .line 57
    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    sget-object v2, Landroidx/constraintlayout/b/a/a/f$a;->d:Landroidx/constraintlayout/b/a/a/f$a;

    iput-object v2, v1, Landroidx/constraintlayout/b/a/a/f;->e:Landroidx/constraintlayout/b/a/a/f$a;

    .line 58
    :goto_6
    iget v1, v0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v5, v1, :cond_b

    .line 59
    iget-object v1, v0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_a

    .line 60
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v2

    if-ne v2, v4, :cond_a

    goto :goto_7

    .line 63
    :cond_a
    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    .line 64
    iget-object v2, v1, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/k;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 68
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/k;->a(Landroidx/constraintlayout/b/a/a/f;)V

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/k;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/b/a/a/k;->a(Landroidx/constraintlayout/b/a/a/f;)V

    :cond_c
    :goto_8
    return-void
.end method
