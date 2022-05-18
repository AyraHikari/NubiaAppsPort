.class Landroid/support/v7/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/e0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/d$a;,
        Landroid/support/v7/widget/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/v7/widget/d$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/d$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/d$b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/support/v7/widget/d$a;

.field e:Ljava/lang/Runnable;

.field final f:Z

.field final g:Landroid/support/v7/widget/e0;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/d$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/d$a;Z)V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/d$a;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v4/util/Pools$Pool;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    .line 7
    iput-boolean p2, p0, Landroid/support/v7/widget/d;->f:Z

    .line 8
    new-instance p1, Landroid/support/v7/widget/e0;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/e0;-><init>(Landroid/support/v7/widget/e0$a;)V

    iput-object p1, p0, Landroid/support/v7/widget/d;->g:Landroid/support/v7/widget/e0;

    return-void
.end method

.method private c(Landroid/support/v7/widget/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->p(Landroid/support/v7/widget/d$b;)V

    return-void
.end method

.method private d(Landroid/support/v7/widget/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->p(Landroid/support/v7/widget/d$b;)V

    return-void
.end method

.method private f(Landroid/support/v7/widget/d$b;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/support/v7/widget/d$b;->b:I

    .line 2
    iget v1, p1, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v0

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_5

    .line 3
    iget-object v7, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    invoke-interface {v7, v4}, Landroid/support/v7/widget/d$a;->d(I)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v7

    if-nez v7, :cond_2

    .line 4
    invoke-direct {p0, v4}, Landroid/support/v7/widget/d;->h(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    if-ne v3, v6, :cond_1

    .line 5
    invoke-virtual {p0, v6, v0, v5}, Landroid/support/v7/widget/d;->a(III)Landroid/support/v7/widget/d$b;

    move-result-object v3

    .line 6
    invoke-direct {p0, v3}, Landroid/support/v7/widget/d;->p(Landroid/support/v7/widget/d$b;)V

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    move v7, v2

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 7
    invoke-virtual {p0, v6, v0, v5}, Landroid/support/v7/widget/d;->a(III)Landroid/support/v7/widget/d$b;

    move-result-object v3

    .line 8
    invoke-direct {p0, v3}, Landroid/support/v7/widget/d;->k(Landroid/support/v7/widget/d$b;)V

    move v3, v6

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    move v7, v6

    :goto_4
    if-eqz v3, :cond_4

    sub-int/2addr v4, v5

    sub-int/2addr v1, v5

    move v5, v6

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    :goto_5
    add-int/2addr v4, v6

    move v3, v7

    goto :goto_0

    .line 9
    :cond_5
    iget v1, p1, Landroid/support/v7/widget/d$b;->c:I

    if-eq v5, v1, :cond_6

    .line 10
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    .line 11
    invoke-virtual {p0, v6, v0, v5}, Landroid/support/v7/widget/d;->a(III)Landroid/support/v7/widget/d$b;

    move-result-object p1

    :cond_6
    if-nez v3, :cond_7

    .line 12
    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->k(Landroid/support/v7/widget/d$b;)V

    goto :goto_6

    .line 13
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->p(Landroid/support/v7/widget/d$b;)V

    :goto_6
    return-void
.end method

.method private g(Landroid/support/v7/widget/d$b;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/support/v7/widget/d$b;->b:I

    .line 2
    iget v1, p1, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v5, v2

    move v4, v3

    move v3, v0

    :goto_0
    const/4 v6, 0x2

    if-ge v0, v1, :cond_4

    .line 3
    iget-object v7, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    invoke-interface {v7, v0}, Landroid/support/v7/widget/d$a;->d(I)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 4
    invoke-direct {p0, v0}, Landroid/support/v7/widget/d;->h(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v4, v8, :cond_1

    .line 5
    invoke-virtual {p0, v6, v3, v5}, Landroid/support/v7/widget/d;->a(III)Landroid/support/v7/widget/d$b;

    move-result-object v3

    .line 6
    invoke-direct {p0, v3}, Landroid/support/v7/widget/d;->p(Landroid/support/v7/widget/d$b;)V

    move v3, v0

    move v5, v2

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 7
    invoke-virtual {p0, v6, v3, v5}, Landroid/support/v7/widget/d;->a(III)Landroid/support/v7/widget/d$b;

    move-result-object v3

    .line 8
    invoke-direct {p0, v3}, Landroid/support/v7/widget/d;->k(Landroid/support/v7/widget/d$b;)V

    move v3, v0

    move v5, v2

    :cond_3
    move v4, v8

    :goto_2
    add-int/2addr v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_4
    iget v0, p1, Landroid/support/v7/widget/d$b;->c:I

    if-eq v5, v0, :cond_5

    .line 10
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    .line 11
    invoke-virtual {p0, v6, v3, v5}, Landroid/support/v7/widget/d;->a(III)Landroid/support/v7/widget/d$b;

    move-result-object p1

    :cond_5
    if-nez v4, :cond_6

    .line 12
    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->k(Landroid/support/v7/widget/d$b;)V

    goto :goto_3

    .line 13
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->p(Landroid/support/v7/widget/d$b;)V

    :goto_3
    return-void
.end method

.method private h(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/d$b;

    .line 3
    iget v4, v3, Landroid/support/v7/widget/d$b;->a:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 4
    iget v3, v3, Landroid/support/v7/widget/d$b;->c:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/d;->n(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    :cond_0
    if-nez v4, :cond_2

    .line 5
    iget v4, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v3, v3, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 6
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/d;->n(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private k(Landroid/support/v7/widget/d$b;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    .line 2
    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/d;->t(II)I

    move-result v0

    .line 3
    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    .line 4
    iget v2, p1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v4

    :goto_0
    move v6, v5

    move v7, v6

    .line 6
    :goto_1
    iget v8, p1, Landroid/support/v7/widget/d$b;->c:I

    if-ge v6, v8, :cond_7

    .line 7
    iget v8, p1, Landroid/support/v7/widget/d$b;->b:I

    mul-int v9, v2, v6

    add-int/2addr v8, v9

    .line 8
    iget v9, p1, Landroid/support/v7/widget/d$b;->a:I

    invoke-direct {p0, v8, v9}, Landroid/support/v7/widget/d;->t(II)I

    move-result v8

    .line 9
    iget v9, p1, Landroid/support/v7/widget/d$b;->a:I

    if-eq v9, v5, :cond_4

    if-eq v9, v3, :cond_3

    :cond_2
    move v10, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v0, 0x1

    if-ne v8, v10, :cond_2

    :goto_2
    move v10, v5

    goto :goto_3

    :cond_4
    if-ne v8, v0, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 10
    :cond_5
    invoke-virtual {p0, v9, v0, v7}, Landroid/support/v7/widget/d;->a(III)Landroid/support/v7/widget/d$b;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/d;->l(Landroid/support/v7/widget/d$b;I)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    .line 13
    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    if-ne v0, v3, :cond_6

    add-int/2addr v1, v7

    :cond_6
    move v7, v5

    move v0, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 14
    :cond_7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    if-lez v7, :cond_8

    .line 15
    iget p1, p1, Landroid/support/v7/widget/d$b;->a:I

    invoke-virtual {p0, p1, v0, v7}, Landroid/support/v7/widget/d;->a(III)Landroid/support/v7/widget/d$b;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/d;->l(Landroid/support/v7/widget/d$b;I)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    :cond_8
    return-void

    .line 18
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private p(Landroid/support/v7/widget/d$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/d$a;->c(II)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/d$a;->a(II)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/d$a;->f(II)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/d$a;->h(II)V

    :goto_0
    return-void
.end method

.method private t(II)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ltz v0, :cond_d

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/d$b;

    .line 3
    iget v4, v3, Landroid/support/v7/widget/d$b;->a:I

    if-ne v4, v2, :cond_8

    .line 4
    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v4, v3, Landroid/support/v7/widget/d$b;->c:I

    if-ge v2, v4, :cond_0

    move v5, v2

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v2

    move v5, v4

    :goto_1
    if-lt p1, v5, :cond_6

    if-gt p1, v6, :cond_6

    if-ne v5, v2, :cond_3

    if-nez p2, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 5
    iput v4, v3, Landroid/support/v7/widget/d$b;->c:I

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_2

    add-int/lit8 v4, v4, -0x1

    .line 6
    iput v4, v3, Landroid/support/v7/widget/d$b;->c:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 7
    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v1, :cond_5

    add-int/lit8 v2, v2, -0x1

    .line 8
    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    if-ge p1, v2, :cond_c

    if-nez p2, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 9
    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    add-int/lit8 v4, v4, 0x1

    .line 10
    iput v4, v3, Landroid/support/v7/widget/d$b;->c:I

    goto :goto_4

    :cond_7
    if-ne p2, v1, :cond_c

    add-int/lit8 v2, v2, -0x1

    .line 11
    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    add-int/lit8 v4, v4, -0x1

    .line 12
    iput v4, v3, Landroid/support/v7/widget/d$b;->c:I

    goto :goto_4

    .line 13
    :cond_8
    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    if-gt v2, p1, :cond_a

    if-nez v4, :cond_9

    .line 14
    iget v2, v3, Landroid/support/v7/widget/d$b;->c:I

    sub-int/2addr p1, v2

    goto :goto_4

    :cond_9
    if-ne v4, v1, :cond_c

    .line 15
    iget v2, v3, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr p1, v2

    goto :goto_4

    :cond_a
    if-nez p2, :cond_b

    add-int/lit8 v2, v2, 0x1

    .line 16
    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    goto :goto_4

    :cond_b
    if-ne p2, v1, :cond_c

    add-int/lit8 v2, v2, -0x1

    .line 17
    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 18
    :cond_d
    iget-object p2, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_11

    .line 19
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/d$b;

    .line 20
    iget v1, v0, Landroid/support/v7/widget/d$b;->a:I

    if-ne v1, v2, :cond_f

    .line 21
    iget v1, v0, Landroid/support/v7/widget/d$b;->c:I

    iget v3, v0, Landroid/support/v7/widget/d$b;->b:I

    if-eq v1, v3, :cond_e

    if-gez v1, :cond_10

    .line 22
    :cond_e
    iget-object v1, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    goto :goto_6

    .line 24
    :cond_f
    iget v1, v0, Landroid/support/v7/widget/d$b;->c:I

    if-gtz v1, :cond_10

    .line 25
    iget-object v1, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method


# virtual methods
.method public a(III)Landroid/support/v7/widget/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/d$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/d$b;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/widget/d$b;-><init>(III)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/d$b;->a:I

    .line 4
    iput p2, v0, Landroid/support/v7/widget/d$b;->b:I

    .line 5
    iput p3, v0, Landroid/support/v7/widget/d$b;->c:I

    :goto_0
    return-object v0
.end method

.method public b(Landroid/support/v7/widget/d$b;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/d;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/d$b;

    .line 3
    iget v3, v2, Landroid/support/v7/widget/d$b;->a:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v3, v2, Landroid/support/v7/widget/d$b;->b:I

    if-ne v3, p1, :cond_1

    .line 5
    iget p1, v2, Landroid/support/v7/widget/d$b;->c:I

    goto :goto_1

    :cond_1
    if-ge v3, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 6
    :cond_2
    iget v2, v2, Landroid/support/v7/widget/d$b;->c:I

    if-gt v2, p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 7
    :cond_3
    iget v3, v2, Landroid/support/v7/widget/d$b;->b:I

    if-gt v3, p1, :cond_6

    .line 8
    iget v2, v2, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr v3, v2

    if-le v3, p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    sub-int/2addr p1, v2

    goto :goto_1

    .line 9
    :cond_5
    iget v3, v2, Landroid/support/v7/widget/d$b;->b:I

    if-gt v3, p1, :cond_6

    .line 10
    iget v2, v2, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr p1, v2

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return p1
.end method

.method i()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget-object v3, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/d$b;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/d$a;->g(Landroid/support/v7/widget/d$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->r(Ljava/util/List;)V

    return-void
.end method

.method j()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/d;->i()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 3
    iget-object v2, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/d$b;

    .line 4
    iget v3, v2, Landroid/support/v7/widget/d$b;->a:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/d$a;->g(Landroid/support/v7/widget/d$b;)V

    .line 6
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget v4, v2, Landroid/support/v7/widget/d$b;->b:I

    iget v2, v2, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v3, v4, v2}, Landroid/support/v7/widget/d$a;->c(II)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/d$a;->g(Landroid/support/v7/widget/d$b;)V

    .line 8
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget v4, v2, Landroid/support/v7/widget/d$b;->b:I

    iget v2, v2, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v3, v4, v2}, Landroid/support/v7/widget/d$a;->a(II)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/d$a;->g(Landroid/support/v7/widget/d$b;)V

    .line 10
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget v4, v2, Landroid/support/v7/widget/d$b;->b:I

    iget v2, v2, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v3, v4, v2}, Landroid/support/v7/widget/d$a;->e(II)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/d$a;->g(Landroid/support/v7/widget/d$b;)V

    .line 12
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget v4, v2, Landroid/support/v7/widget/d$b;->b:I

    iget v2, v2, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v3, v4, v2}, Landroid/support/v7/widget/d$a;->h(II)V

    .line 13
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/d;->e:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 14
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->r(Ljava/util/List;)V

    return-void
.end method

.method l(Landroid/support/v7/widget/d$b;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/d$a;->b(Landroid/support/v7/widget/d$b;)V

    .line 2
    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v0, p2, p1}, Landroid/support/v7/widget/d$a;->a(II)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/d;->d:Landroid/support/v7/widget/d$a;

    iget p1, p1, Landroid/support/v7/widget/d$b;->c:I

    invoke-interface {v0, p2, p1}, Landroid/support/v7/widget/d$a;->e(II)V

    :goto_0
    return-void
.end method

.method m(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/d;->n(II)I

    move-result p1

    return p1
.end method

.method n(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/d$b;

    .line 3
    iget v2, v1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 4
    iget v2, v1, Landroid/support/v7/widget/d$b;->b:I

    if-ne v2, p1, :cond_0

    .line 5
    iget p1, v1, Landroid/support/v7/widget/d$b;->c:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 6
    :cond_1
    iget v1, v1, Landroid/support/v7/widget/d$b;->c:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget v3, v1, Landroid/support/v7/widget/d$b;->b:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 8
    iget v1, v1, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 9
    iget v1, v1, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method q()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->g:Landroid/support/v7/widget/e0;

    iget-object v1, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e0;->b(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 3
    iget-object v2, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/d$b;

    .line 4
    iget v3, v2, Landroid/support/v7/widget/d$b;->a:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->d(Landroid/support/v7/widget/d$b;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->g(Landroid/support/v7/widget/d$b;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->f(Landroid/support/v7/widget/d$b;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->c(Landroid/support/v7/widget/d$b;)V

    .line 9
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/d;->e:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method r(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/d$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/d$b;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method s()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->r(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->r(Ljava/util/List;)V

    return-void
.end method
