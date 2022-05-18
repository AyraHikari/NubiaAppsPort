.class public Landroid/support/v7/widget/a0;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/a0$b;,
        Landroid/support/v7/widget/a0$a;,
        Landroid/support/v7/widget/a0$d;,
        Landroid/support/v7/widget/a0$c;
    }
.end annotation


# instance fields
.field e:I

.field private f:Landroid/support/v7/widget/a0$c;

.field g:Landroid/support/v7/widget/f0;

.field private h:Z

.field private i:Z

.field j:Z

.field private k:Z

.field private l:Z

.field m:I

.field n:I

.field private o:Z

.field p:Landroid/support/v7/widget/a0$d;

.field final q:Landroid/support/v7/widget/a0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/a0;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/support/v7/widget/a0;->i:Z

    .line 4
    iput-boolean p1, p0, Landroid/support/v7/widget/a0;->j:Z

    .line 5
    iput-boolean p1, p0, Landroid/support/v7/widget/a0;->k:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/support/v7/widget/a0;->l:Z

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroid/support/v7/widget/a0;->m:I

    const/high16 p1, -0x80000000

    .line 8
    iput p1, p0, Landroid/support/v7/widget/a0;->n:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    .line 10
    new-instance p1, Landroid/support/v7/widget/a0$a;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/a0$a;-><init>(Landroid/support/v7/widget/a0;)V

    iput-object p1, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    .line 11
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/a0;->F1(I)V

    .line 12
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/a0;->G1(Z)V

    return-void
.end method

.method private A1(Landroid/support/v7/widget/RecyclerView$r;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1}, Landroid/support/v7/widget/f0;->h()I

    move-result v1

    sub-int/2addr v1, p2

    .line 3
    iget-boolean p2, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 4
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v3

    .line 5
    iget-object v4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 6
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/a0;->z1(Landroid/support/v7/widget/RecyclerView$r;II)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_1
    if-ltz p2, :cond_4

    .line 7
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v2

    .line 8
    iget-object v3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/a0;->z1(Landroid/support/v7/widget/RecyclerView$r;II)V

    return-void

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private B1(Landroid/support/v7/widget/RecyclerView$r;I)V
    .locals 5

    if-gez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v2

    .line 4
    iget-object v3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_1

    .line 5
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/a0;->z1(Landroid/support/v7/widget/RecyclerView$r;II)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 6
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v3

    .line 7
    iget-object v4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_3

    .line 8
    invoke-direct {p0, p1, v1, v2}, Landroid/support/v7/widget/a0;->z1(Landroid/support/v7/widget/RecyclerView$r;II)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private C1()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->u1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->i:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->i:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    :goto_1
    return-void
.end method

.method private H1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->L()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/support/v7/widget/a0$a;->c(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->h:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/a0;->k:Z

    if-eq v0, v3, :cond_2

    return v1

    .line 5
    :cond_2
    iget-boolean v0, p2, Landroid/support/v7/widget/a0$a;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->l1(Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->m1(Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/a0$a;->b(Landroid/view/View;)V

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->W0()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result p1

    iget-object v3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v3}, Landroid/support/v7/widget/f0;->i()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0}, Landroid/support/v7/widget/f0;->k()I

    move-result v0

    if-ge p1, v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-eqz v1, :cond_7

    .line 9
    iget-boolean p1, p2, Landroid/support/v7/widget/a0$a;->c:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->i()I

    move-result p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->k()I

    move-result p1

    :goto_1
    iput p1, p2, Landroid/support/v7/widget/a0$a;->b:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private I1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/v7/widget/a0;->m:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/a0;->m:I

    iput p1, p2, Landroid/support/v7/widget/a0$a;->a:I

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/a0$d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    iget-boolean p1, p1, Landroid/support/v7/widget/a0$d;->c:Z

    iput-boolean p1, p2, Landroid/support/v7/widget/a0$a;->c:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->i()I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    iget v1, v1, Landroid/support/v7/widget/a0$d;->b:I

    sub-int/2addr p1, v1

    iput p1, p2, Landroid/support/v7/widget/a0$a;->b:I

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->k()I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    iget v1, v1, Landroid/support/v7/widget/a0$d;->b:I

    add-int/2addr p1, v1

    iput p1, p2, Landroid/support/v7/widget/a0$a;->b:I

    :goto_0
    return v0

    .line 8
    :cond_3
    iget p1, p0, Landroid/support/v7/widget/a0;->n:I

    if-ne p1, v3, :cond_c

    .line 9
    iget p1, p0, Landroid/support/v7/widget/a0;->m:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a0;->n1(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 10
    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/f0;->e(Landroid/view/View;)I

    move-result v2

    .line 11
    iget-object v3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v3}, Landroid/support/v7/widget/f0;->l()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 12
    invoke-virtual {p2}, Landroid/support/v7/widget/a0$a;->a()V

    return v0

    .line 13
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v3}, Landroid/support/v7/widget/f0;->k()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    .line 14
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->k()I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/a0$a;->b:I

    .line 15
    iput-boolean v1, p2, Landroid/support/v7/widget/a0$a;->c:Z

    return v0

    .line 16
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1}, Landroid/support/v7/widget/f0;->i()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    .line 17
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->i()I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/a0$a;->b:I

    .line 18
    iput-boolean v0, p2, Landroid/support/v7/widget/a0$a;->c:Z

    return v0

    .line 19
    :cond_6
    iget-boolean v1, p2, Landroid/support/v7/widget/a0$a;->c:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1}, Landroid/support/v7/widget/f0;->m()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Landroid/support/v7/widget/a0$a;->b:I

    goto :goto_3

    .line 20
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result p1

    if-lez p1, :cond_b

    .line 21
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result p1

    .line 22
    iget v2, p0, Landroid/support/v7/widget/a0;->m:I

    if-ge v2, p1, :cond_9

    move p1, v0

    goto :goto_2

    :cond_9
    move p1, v1

    :goto_2
    iget-boolean v2, p0, Landroid/support/v7/widget/a0;->j:Z

    if-ne p1, v2, :cond_a

    move v1, v0

    :cond_a
    iput-boolean v1, p2, Landroid/support/v7/widget/a0$a;->c:Z

    .line 23
    :cond_b
    invoke-virtual {p2}, Landroid/support/v7/widget/a0$a;->a()V

    :goto_3
    return v0

    .line 24
    :cond_c
    iget-boolean p1, p0, Landroid/support/v7/widget/a0;->j:Z

    iput-boolean p1, p2, Landroid/support/v7/widget/a0$a;->c:Z

    if-eqz p1, :cond_d

    .line 25
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->i()I

    move-result p1

    iget v1, p0, Landroid/support/v7/widget/a0;->n:I

    sub-int/2addr p1, v1

    iput p1, p2, Landroid/support/v7/widget/a0$a;->b:I

    goto :goto_4

    .line 26
    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->k()I

    move-result p1

    iget v1, p0, Landroid/support/v7/widget/a0;->n:I

    add-int/2addr p1, v1

    iput p1, p2, Landroid/support/v7/widget/a0$a;->b:I

    :goto_4
    return v0

    .line 27
    :cond_e
    :goto_5
    iput v2, p0, Landroid/support/v7/widget/a0;->m:I

    .line 28
    iput v3, p0, Landroid/support/v7/widget/a0;->n:I

    :cond_f
    :goto_6
    return v1
.end method

.method private J1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a0;->I1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a0;->H1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/a0$a;->a()V

    .line 4
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p2, Landroid/support/v7/widget/a0$a;->a:I

    return-void
.end method

.method private K1(IIZLandroid/support/v7/widget/RecyclerView$w;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/a0;->s1(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p4

    iput p4, v0, Landroid/support/v7/widget/a0$c;->h:I

    .line 2
    iget-object p4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput p1, p4, Landroid/support/v7/widget/a0$c;->f:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p4, Landroid/support/v7/widget/a0$c;->h:I

    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2}, Landroid/support/v7/widget/f0;->j()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, p4, Landroid/support/v7/widget/a0$c;->h:I

    .line 4
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->q1()Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object p4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget-boolean v2, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p4, Landroid/support/v7/widget/a0$c;->e:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget v2, v1, Landroid/support/v7/widget/a0$c;->e:I

    add-int/2addr v0, v2

    iput v0, p4, Landroid/support/v7/widget/a0$c;->d:I

    .line 7
    iget-object p4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroid/support/v7/widget/a0$c;->b:I

    .line 8
    iget-object p4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p4}, Landroid/support/v7/widget/f0;->i()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->r1()Landroid/view/View;

    move-result-object p1

    .line 10
    iget-object p4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget v2, p4, Landroid/support/v7/widget/a0$c;->h:I

    iget-object v3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v3}, Landroid/support/v7/widget/f0;->k()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p4, Landroid/support/v7/widget/a0$c;->h:I

    .line 11
    iget-object p4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget-boolean v2, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p4, Landroid/support/v7/widget/a0$c;->e:I

    .line 12
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget v2, v1, Landroid/support/v7/widget/a0$c;->e:I

    add-int/2addr v0, v2

    iput v0, p4, Landroid/support/v7/widget/a0$c;->d:I

    .line 13
    iget-object p4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroid/support/v7/widget/a0$c;->b:I

    .line 14
    iget-object p4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p4}, Landroid/support/v7/widget/f0;->k()I

    move-result p4

    add-int/2addr p1, p4

    .line 15
    :goto_1
    iget-object p4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput p2, p4, Landroid/support/v7/widget/a0$c;->c:I

    if-eqz p3, :cond_3

    sub-int/2addr p2, p1

    .line 16
    iput p2, p4, Landroid/support/v7/widget/a0$c;->c:I

    .line 17
    :cond_3
    iput p1, p4, Landroid/support/v7/widget/a0$c;->g:I

    return-void
.end method

.method private L1(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1}, Landroid/support/v7/widget/f0;->i()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/a0$c;->c:I

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget-boolean v1, p0, Landroid/support/v7/widget/a0;->j:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/a0$c;->e:I

    .line 3
    iput p1, v0, Landroid/support/v7/widget/a0$c;->d:I

    .line 4
    iput v2, v0, Landroid/support/v7/widget/a0$c;->f:I

    .line 5
    iput p2, v0, Landroid/support/v7/widget/a0$c;->b:I

    const/high16 p1, -0x80000000

    .line 6
    iput p1, v0, Landroid/support/v7/widget/a0$c;->g:I

    return-void
.end method

.method private M1(Landroid/support/v7/widget/a0$a;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/support/v7/widget/a0$a;->a:I

    iget p1, p1, Landroid/support/v7/widget/a0$a;->b:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/a0;->L1(II)V

    return-void
.end method

.method private N1(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1}, Landroid/support/v7/widget/f0;->k()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/support/v7/widget/a0$c;->c:I

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput p1, v0, Landroid/support/v7/widget/a0$c;->d:I

    .line 3
    iget-boolean p1, p0, Landroid/support/v7/widget/a0;->j:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, v0, Landroid/support/v7/widget/a0$c;->e:I

    .line 4
    iput v1, v0, Landroid/support/v7/widget/a0$c;->f:I

    .line 5
    iput p2, v0, Landroid/support/v7/widget/a0$c;->b:I

    const/high16 p1, -0x80000000

    .line 6
    iput p1, v0, Landroid/support/v7/widget/a0$c;->g:I

    return-void
.end method

.method private O1(Landroid/support/v7/widget/a0$a;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/support/v7/widget/a0$a;->a:I

    iget p1, p1, Landroid/support/v7/widget/a0$a;->b:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/a0;->N1(II)V

    return-void
.end method

.method private X0(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->l:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a0;->f1(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->l:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a0;->e1(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/a0;->l:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/j0;->a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/f0;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$m;Z)I

    move-result p1

    return p1
.end method

.method private Y0(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->l:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a0;->f1(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->l:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a0;->e1(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/a0;->l:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/a0;->j:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/j0;->b(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/f0;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$m;ZZ)I

    move-result p1

    return p1
.end method

.method private Z0(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->l:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a0;->f1(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->l:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a0;->e1(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/a0;->l:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/j0;->c(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/f0;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$m;Z)I

    move-result p1

    return p1
.end method

.method private a1(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    .line 1
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/a0;->e:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 2
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/a0;->e:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    .line 3
    :cond_4
    iget p1, p0, Landroid/support/v7/widget/a0;->e:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    .line 4
    :cond_6
    iget p1, p0, Landroid/support/v7/widget/a0;->e:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    return v1

    :cond_9
    return v0
.end method

.method private d1(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Landroid/support/v7/widget/a0;->k1(III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private e1(ZZ)Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/a0;->j1(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/a0;->j1(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private f1(ZZ)Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/a0;->j1(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/a0;->j1(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private h1(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/a0;->k1(III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private k1(III)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0}, Landroid/support/v7/widget/f0;->k()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1}, Landroid/support/v7/widget/f0;->i()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p1, p2, :cond_5

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v5

    .line 5
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_4

    if-ge v6, p3, :cond_4

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$n;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    .line 7
    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_2

    goto :goto_2

    :cond_2
    return-object v5

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    move-object v3, v5

    :cond_4
    :goto_3
    add-int/2addr p1, v2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method private l1(Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->d1(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->h1(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private m1(Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->h1(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->d1(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private o1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0}, Landroid/support/v7/widget/f0;->i()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 2
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/a0;->D1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 3
    iget-object p3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p3}, Landroid/support/v7/widget/f0;->i()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/f0;->n(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private p1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0}, Landroid/support/v7/widget/f0;->k()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/a0;->D1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 3
    iget-object p3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p3}, Landroid/support/v7/widget/f0;->k()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    .line 4
    iget-object p3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/f0;->n(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private q1()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private r1()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private w1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$w;->r()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->W0()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$r;->l()Ljava/util/List;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 4
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v6

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_0
    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ge v7, v4, :cond_4

    .line 5
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$z;

    .line 6
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v13

    if-ge v13, v6, :cond_1

    move v13, v11

    goto :goto_1

    :cond_1
    move v13, v5

    .line 7
    :goto_1
    iget-boolean v14, v0, Landroid/support/v7/widget/a0;->j:Z

    if-eq v13, v14, :cond_2

    move v11, v10

    :cond_2
    if-ne v11, v10, :cond_3

    .line 8
    iget-object v10, v0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    iget-object v11, v12, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/f0;->e(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 9
    :cond_3
    iget-object v10, v0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    iget-object v11, v12, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/f0;->e(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_4
    iget-object v4, v0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput-object v3, v4, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    if-lez v8, :cond_6

    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->r1()Landroid/view/View;

    move-result-object v3

    .line 12
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/a0;->N1(II)V

    .line 13
    iget-object v3, v0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput v8, v3, Landroid/support/v7/widget/a0$c;->h:I

    .line 14
    iput v5, v3, Landroid/support/v7/widget/a0$c;->c:I

    .line 15
    iget v4, v3, Landroid/support/v7/widget/a0$c;->d:I

    iget-boolean v6, v0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v6, :cond_5

    move v6, v11

    goto :goto_3

    :cond_5
    move v6, v10

    :goto_3
    add-int/2addr v4, v6

    iput v4, v3, Landroid/support/v7/widget/a0$c;->d:I

    .line 16
    invoke-virtual {p0, v1, v3, v2, v5}, Landroid/support/v7/widget/a0;->c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I

    :cond_6
    if-lez v9, :cond_8

    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->q1()Landroid/view/View;

    move-result-object v3

    .line 18
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/a0;->L1(II)V

    .line 19
    iget-object v3, v0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput v9, v3, Landroid/support/v7/widget/a0$c;->h:I

    .line 20
    iput v5, v3, Landroid/support/v7/widget/a0$c;->c:I

    .line 21
    iget v4, v3, Landroid/support/v7/widget/a0$c;->d:I

    iget-boolean v6, v0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    move v10, v11

    :goto_4
    add-int/2addr v4, v10

    iput v4, v3, Landroid/support/v7/widget/a0$c;->d:I

    .line 22
    invoke-virtual {p0, v1, v3, v2, v5}, Landroid/support/v7/widget/a0;->c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I

    .line 23
    :cond_8
    iget-object v1, v0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    :cond_9
    :goto_5
    return-void
.end method

.method private y1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;)V
    .locals 2

    .line 1
    iget-boolean v0, p2, Landroid/support/v7/widget/a0$c;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/a0$c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget p2, p2, Landroid/support/v7/widget/a0$c;->g:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a0;->A1(Landroid/support/v7/widget/RecyclerView$r;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget p2, p2, Landroid/support/v7/widget/a0$c;->g:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a0;->B1(Landroid/support/v7/widget/RecyclerView$r;I)V

    :goto_0
    return-void
.end method

.method private z1(Landroid/support/v7/widget/RecyclerView$r;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 1
    invoke-virtual {p0, p3, p1}, Landroid/support/v7/widget/RecyclerView$m;->M0(ILandroid/support/v7/widget/RecyclerView$r;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 2
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/RecyclerView$m;->M0(ILandroid/support/v7/widget/RecyclerView$r;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public C0(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/a0$d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/support/v7/widget/a0$d;

    iput-object p1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q0()V

    :cond_0
    return-void
.end method

.method public D0()Landroid/os/Parcelable;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/a0$d;

    iget-object v1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/a0$d;-><init>(Landroid/support/v7/widget/a0$d;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v7/widget/a0$d;

    invoke-direct {v0}, Landroid/support/v7/widget/a0$d;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    .line 6
    iget-boolean v1, p0, Landroid/support/v7/widget/a0;->h:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/a0;->j:Z

    xor-int/2addr v1, v2

    .line 7
    iput-boolean v1, v0, Landroid/support/v7/widget/a0$d;->c:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->q1()Landroid/view/View;

    move-result-object v1

    .line 9
    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2}, Landroid/support/v7/widget/f0;->i()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/a0$d;->b:I

    .line 10
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/a0$d;->a:I

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->r1()Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/a0$d;->a:I

    .line 13
    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2}, Landroid/support/v7/widget/f0;->k()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/a0$d;->b:I

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/a0$d;->b()V

    :goto_0
    return-object v0
.end method

.method D1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/a0$c;->a:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5
    invoke-direct {p0, v0, v3, v2, p3}, Landroid/support/v7/widget/a0;->K1(IIZLandroid/support/v7/widget/RecyclerView$w;)V

    .line 6
    iget-object v2, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget v4, v2, Landroid/support/v7/widget/a0$c;->g:I

    .line 7
    invoke-virtual {p0, p2, v2, p3, v1}, Landroid/support/v7/widget/a0;->c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_2

    return v1

    :cond_2
    if-le v3, v4, :cond_3

    mul-int p1, v0, v4

    .line 8
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/f0;->n(I)V

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public E1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/widget/a0;->m:I

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Landroid/support/v7/widget/a0;->n:I

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/support/v7/widget/a0$d;->b()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q0()V

    return-void
.end method

.method public F1(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a0;->h(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Landroid/support/v7/widget/a0;->e:I

    if-ne p1, v1, :cond_2

    return-void

    .line 4
    :cond_2
    iput p1, p0, Landroid/support/v7/widget/a0;->e:I

    .line 5
    iput-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q0()V

    return-void
.end method

.method public G1(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a0;->h(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->i:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/a0;->i:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q0()V

    return-void
.end method

.method public S0(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/a0;->D1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    return p1
.end method

.method public T0(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/a0;->D1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    return p1
.end method

.method public W0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->h:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/a0;->k:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/a0$c;

    invoke-direct {v0}, Landroid/support/v7/widget/a0$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/f0;->b(Landroid/support/v7/widget/RecyclerView$m;I)Landroid/support/v7/widget/f0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    :cond_1
    return-void
.end method

.method c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I
    .locals 7

    .line 1
    iget v0, p2, Landroid/support/v7/widget/a0$c;->c:I

    .line 2
    iget v1, p2, Landroid/support/v7/widget/a0$c;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    .line 3
    iput v1, p2, Landroid/support/v7/widget/a0$c;->g:I

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a0;->y1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;)V

    .line 5
    :cond_1
    iget v1, p2, Landroid/support/v7/widget/a0$c;->c:I

    iget v3, p2, Landroid/support/v7/widget/a0$c;->h:I

    add-int/2addr v1, v3

    .line 6
    new-instance v3, Landroid/support/v7/widget/a0$b;

    invoke-direct {v3}, Landroid/support/v7/widget/a0$b;-><init>()V

    :cond_2
    if-lez v1, :cond_8

    .line 7
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/a0$c;->a(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 8
    invoke-virtual {v3}, Landroid/support/v7/widget/a0$b;->a()V

    .line 9
    invoke-virtual {p0, p1, p3, p2, v3}, Landroid/support/v7/widget/a0;->v1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/a0$b;)V

    .line 10
    iget-boolean v4, v3, Landroid/support/v7/widget/a0$b;->b:Z

    if-eqz v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget v4, p2, Landroid/support/v7/widget/a0$c;->b:I

    iget v5, v3, Landroid/support/v7/widget/a0$b;->a:I

    iget v6, p2, Landroid/support/v7/widget/a0$c;->f:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/a0$c;->b:I

    .line 12
    iget-boolean v4, v3, Landroid/support/v7/widget/a0$b;->c:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget-object v4, v4, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    if-nez v4, :cond_4

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v4

    if-nez v4, :cond_5

    .line 13
    :cond_4
    iget v4, p2, Landroid/support/v7/widget/a0$c;->c:I

    iget v5, v3, Landroid/support/v7/widget/a0$b;->a:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/a0$c;->c:I

    sub-int/2addr v1, v5

    .line 14
    :cond_5
    iget v4, p2, Landroid/support/v7/widget/a0$c;->g:I

    if-eq v4, v2, :cond_7

    .line 15
    iget v5, v3, Landroid/support/v7/widget/a0$b;->a:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/a0$c;->g:I

    .line 16
    iget v5, p2, Landroid/support/v7/widget/a0$c;->c:I

    if-gez v5, :cond_6

    add-int/2addr v4, v5

    .line 17
    iput v4, p2, Landroid/support/v7/widget/a0$c;->g:I

    .line 18
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a0;->y1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;)V

    :cond_7
    if-eqz p4, :cond_2

    .line 19
    iget-boolean v4, v3, Landroid/support/v7/widget/a0$b;->d:Z

    if-eqz v4, :cond_2

    .line 20
    :cond_8
    :goto_0
    iget p1, p2, Landroid/support/v7/widget/a0$c;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public g1()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/support/v7/widget/a0;->j1(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i1()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v7/widget/a0;->j1(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method j1(IIZZ)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0}, Landroid/support/v7/widget/f0;->k()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1}, Landroid/support/v7/widget/f0;->i()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_4

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v4

    .line 5
    iget-object v5, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result v5

    .line 6
    iget-object v6, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result v6

    if-ge v5, v1, :cond_3

    if-le v6, v0, :cond_3

    if-eqz p3, :cond_2

    if-lt v5, v0, :cond_1

    if-gt v6, v1, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_3

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    return-object v4

    :cond_3
    :goto_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method public k0(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->k0(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 2
    iget-boolean p1, p0, Landroid/support/v7/widget/a0;->o:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$m;->J0(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 4
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->d()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l0(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->C1()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/a0;->a1(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 5
    invoke-direct {p0, p4}, Landroid/support/v7/widget/a0;->m1(Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, p4}, Landroid/support/v7/widget/a0;->l1(Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    return-object v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    const v3, 0x3ea8f5c3    # 0.33f

    .line 8
    iget-object v4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v4}, Landroid/support/v7/widget/f0;->l()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    .line 9
    invoke-direct {p0, p1, v3, v4, p4}, Landroid/support/v7/widget/a0;->K1(IIZLandroid/support/v7/widget/RecyclerView$w;)V

    .line 10
    iget-object v3, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput p2, v3, Landroid/support/v7/widget/a0$c;->g:I

    .line 11
    iput-boolean v4, v3, Landroid/support/v7/widget/a0$c;->a:Z

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p0, p3, v3, p4, p2}, Landroid/support/v7/widget/a0;->c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I

    if-ne p1, v1, :cond_4

    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->r1()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->q1()Landroid/view/View;

    move-result-object p1

    :goto_1
    if-eq p1, v2, :cond_6

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    return-object v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public n0(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->n0(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->g1()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->i1()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public n1(I)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p1, v2

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->B(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public o(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->X0(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    return p1
.end method

.method public p(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->Y0(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    return p1
.end method

.method public q(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->Z0(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    return p1
.end method

.method public r(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->X0(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    return p1
.end method

.method public s(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->Y0(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    return p1
.end method

.method protected s1(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->l()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a0;->Z0(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result p1

    return p1
.end method

.method public t1()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    return v0
.end method

.method protected u1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->N()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method v1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/a0$b;)V
    .locals 9

    .line 1
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/a0$c;->b(Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2
    iput-boolean p2, p4, Landroid/support/v7/widget/a0$b;->b:Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$n;

    .line 4
    iget-object v0, p3, Landroid/support/v7/widget/a0$c;->j:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 5
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    iget v3, p3, Landroid/support/v7/widget/a0$c;->f:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->e(Landroid/view/View;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView$m;->f(Landroid/view/View;I)V

    goto :goto_2

    .line 8
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/a0;->j:Z

    iget v3, p3, Landroid/support/v7/widget/a0$c;->f:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->c(Landroid/view/View;)V

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView$m;->d(Landroid/view/View;I)V

    .line 11
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Landroid/support/v7/widget/RecyclerView$m;->c0(Landroid/view/View;II)V

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f0;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/a0$b;->a:I

    .line 13
    iget v0, p0, Landroid/support/v7/widget/a0;->e:I

    if-ne v0, p2, :cond_8

    .line 14
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->u1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->R()I

    move-result v2

    sub-int/2addr v0, v2

    .line 16
    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/f0;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->Q()I

    move-result v2

    .line 18
    iget-object v0, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f0;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 19
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/a0$c;->f:I

    if-ne v3, v1, :cond_7

    .line 20
    iget p3, p3, Landroid/support/v7/widget/a0$c;->b:I

    .line 21
    iget v1, p4, Landroid/support/v7/widget/a0$b;->a:I

    sub-int v1, p3, v1

    goto :goto_4

    .line 22
    :cond_7
    iget v1, p3, Landroid/support/v7/widget/a0$c;->b:I

    .line 23
    iget p3, p4, Landroid/support/v7/widget/a0$b;->a:I

    add-int/2addr p3, v1

    goto :goto_4

    .line 24
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->S()I

    move-result v0

    .line 25
    iget-object v2, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/f0;->f(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 26
    iget v3, p3, Landroid/support/v7/widget/a0$c;->f:I

    if-ne v3, v1, :cond_9

    .line 27
    iget p3, p3, Landroid/support/v7/widget/a0$c;->b:I

    .line 28
    iget v1, p4, Landroid/support/v7/widget/a0$b;->a:I

    sub-int v1, p3, v1

    move v7, v0

    move v0, p3

    move p3, v2

    move v2, v1

    move v1, v7

    goto :goto_4

    .line 29
    :cond_9
    iget p3, p3, Landroid/support/v7/widget/a0$c;->b:I

    .line 30
    iget v1, p4, Landroid/support/v7/widget/a0$b;->a:I

    add-int/2addr v1, p3

    move v7, v2

    move v2, p3

    move p3, v7

    move v8, v1

    move v1, v0

    move v0, v8

    .line 31
    :goto_4
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v4, v0, v1

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$m;->b0(Landroid/view/View;IIII)V

    .line 32
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$n;->c()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$n;->b()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 33
    :cond_a
    iput-boolean p2, p4, Landroid/support/v7/widget/a0$b;->c:Z

    .line 34
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p1

    iput-boolean p1, p4, Landroid/support/v7/widget/a0$b;->d:Z

    return-void
.end method

.method public x()Landroid/support/v7/widget/RecyclerView$n;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$n;-><init>(II)V

    return-object v0
.end method

.method x1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)V
    .locals 0

    return-void
.end method

.method public y0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/a0$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    iget v0, v0, Landroid/support/v7/widget/a0$d;->a:I

    iput v0, p0, Landroid/support/v7/widget/a0;->m:I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/a0;->b1()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/a0$c;->a:Z

    .line 5
    invoke-direct {p0}, Landroid/support/v7/widget/a0;->C1()V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a0$a;->d()V

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    iget-boolean v2, p0, Landroid/support/v7/widget/a0;->j:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/a0;->k:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v7/widget/a0$a;->c:Z

    .line 8
    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/a0;->J1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/a0;->s1(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    .line 10
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->m()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    iget v4, v4, Landroid/support/v7/widget/a0$a;->a:I

    if-ge v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    .line 11
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    iget-boolean v4, v4, Landroid/support/v7/widget/a0$a;->c:Z

    if-ne v2, v4, :cond_2

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 12
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v4}, Landroid/support/v7/widget/f0;->k()I

    move-result v4

    add-int/2addr v0, v4

    .line 13
    iget-object v4, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v4}, Landroid/support/v7/widget/f0;->j()I

    move-result v4

    add-int/2addr v2, v4

    .line 14
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v4

    const/high16 v5, -0x80000000

    const/4 v6, -0x1

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/support/v7/widget/a0;->m:I

    if-eq v4, v6, :cond_5

    iget v7, p0, Landroid/support/v7/widget/a0;->n:I

    if-eq v7, v5, :cond_5

    .line 15
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/a0;->n1(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 16
    iget-boolean v7, p0, Landroid/support/v7/widget/a0;->j:Z

    if-eqz v7, :cond_3

    .line 17
    iget-object v7, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v7}, Landroid/support/v7/widget/f0;->i()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v7, v4

    .line 18
    iget v4, p0, Landroid/support/v7/widget/a0;->n:I

    goto :goto_2

    .line 19
    :cond_3
    iget-object v7, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result v4

    iget-object v7, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v7}, Landroid/support/v7/widget/f0;->k()I

    move-result v7

    sub-int/2addr v4, v7

    .line 20
    iget v7, p0, Landroid/support/v7/widget/a0;->n:I

    :goto_2
    sub-int/2addr v7, v4

    if-lez v7, :cond_4

    add-int/2addr v0, v7

    goto :goto_3

    :cond_4
    sub-int/2addr v2, v7

    .line 21
    :cond_5
    :goto_3
    iget-object v4, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    invoke-virtual {p0, p2, v4}, Landroid/support/v7/widget/a0;->x1(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/a0$a;)V

    .line 22
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$m;->u(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 23
    iget-object v4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v7

    iput-boolean v7, v4, Landroid/support/v7/widget/a0$c;->i:Z

    .line 24
    iget-object v4, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    iget-boolean v7, v4, Landroid/support/v7/widget/a0$a;->c:Z

    if-eqz v7, :cond_7

    .line 25
    invoke-direct {p0, v4}, Landroid/support/v7/widget/a0;->O1(Landroid/support/v7/widget/a0$a;)V

    .line 26
    iget-object v4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput v0, v4, Landroid/support/v7/widget/a0$c;->h:I

    .line 27
    invoke-virtual {p0, p1, v4, p2, v1}, Landroid/support/v7/widget/a0;->c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I

    .line 28
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget v4, v0, Landroid/support/v7/widget/a0$c;->b:I

    .line 29
    iget v0, v0, Landroid/support/v7/widget/a0$c;->c:I

    if-lez v0, :cond_6

    add-int/2addr v2, v0

    .line 30
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a0;->M1(Landroid/support/v7/widget/a0$a;)V

    .line 31
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput v2, v0, Landroid/support/v7/widget/a0$c;->h:I

    .line 32
    iget v2, v0, Landroid/support/v7/widget/a0$c;->d:I

    iget v7, v0, Landroid/support/v7/widget/a0$c;->e:I

    add-int/2addr v2, v7

    iput v2, v0, Landroid/support/v7/widget/a0$c;->d:I

    .line 33
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/a0;->c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I

    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget v0, v0, Landroid/support/v7/widget/a0$c;->b:I

    goto :goto_4

    .line 35
    :cond_7
    invoke-direct {p0, v4}, Landroid/support/v7/widget/a0;->M1(Landroid/support/v7/widget/a0$a;)V

    .line 36
    iget-object v4, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput v2, v4, Landroid/support/v7/widget/a0$c;->h:I

    .line 37
    invoke-virtual {p0, p1, v4, p2, v1}, Landroid/support/v7/widget/a0;->c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I

    .line 38
    iget-object v2, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget v4, v2, Landroid/support/v7/widget/a0$c;->b:I

    .line 39
    iget v2, v2, Landroid/support/v7/widget/a0$c;->c:I

    if-lez v2, :cond_8

    add-int/2addr v0, v2

    .line 40
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/a0;->q:Landroid/support/v7/widget/a0$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/a0;->O1(Landroid/support/v7/widget/a0$a;)V

    .line 41
    iget-object v2, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iput v0, v2, Landroid/support/v7/widget/a0$c;->h:I

    .line 42
    iget v0, v2, Landroid/support/v7/widget/a0$c;->d:I

    iget v7, v2, Landroid/support/v7/widget/a0$c;->e:I

    add-int/2addr v0, v7

    iput v0, v2, Landroid/support/v7/widget/a0$c;->d:I

    .line 43
    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/a0;->c1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/a0$c;Landroid/support/v7/widget/RecyclerView$w;Z)I

    .line 44
    iget-object v0, p0, Landroid/support/v7/widget/a0;->f:Landroid/support/v7/widget/a0$c;

    iget v0, v0, Landroid/support/v7/widget/a0$c;->b:I

    move v9, v4

    move v4, v0

    move v0, v9

    .line 45
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->C()I

    move-result v2

    if-lez v2, :cond_a

    .line 46
    iget-boolean v2, p0, Landroid/support/v7/widget/a0;->j:Z

    iget-boolean v7, p0, Landroid/support/v7/widget/a0;->k:Z

    xor-int/2addr v2, v7

    if-eqz v2, :cond_9

    .line 47
    invoke-direct {p0, v0, p1, p2, v3}, Landroid/support/v7/widget/a0;->o1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Z)I

    move-result v2

    add-int/2addr v4, v2

    add-int/2addr v0, v2

    .line 48
    invoke-direct {p0, v4, p1, p2, v1}, Landroid/support/v7/widget/a0;->p1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Z)I

    move-result v1

    goto :goto_5

    .line 49
    :cond_9
    invoke-direct {p0, v4, p1, p2, v3}, Landroid/support/v7/widget/a0;->p1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Z)I

    move-result v2

    add-int/2addr v4, v2

    add-int/2addr v0, v2

    .line 50
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/a0;->o1(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;Z)I

    move-result v1

    :goto_5
    add-int/2addr v4, v1

    add-int/2addr v0, v1

    .line 51
    :cond_a
    invoke-direct {p0, p1, p2, v4, v0}, Landroid/support/v7/widget/a0;->w1(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;II)V

    .line 52
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p1

    if-nez p1, :cond_b

    .line 53
    iput v6, p0, Landroid/support/v7/widget/a0;->m:I

    .line 54
    iput v5, p0, Landroid/support/v7/widget/a0;->n:I

    .line 55
    iget-object p1, p0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {p1}, Landroid/support/v7/widget/f0;->o()V

    .line 56
    :cond_b
    iget-boolean p1, p0, Landroid/support/v7/widget/a0;->k:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/a0;->h:Z

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Landroid/support/v7/widget/a0;->p:Landroid/support/v7/widget/a0$d;

    return-void
.end method
