.class Lb/a/b/c/b/g$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lb/a/b/c/b/g$h;

.field final synthetic b:Lb/a/b/c/b/g;


# direct methods
.method public constructor <init>(Lb/a/b/c/b/g;Lb/a/b/c/b/g$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/b/c/b/g$g;->a:Lb/a/b/c/b/g$h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 12

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/g$g;->a:Lb/a/b/c/b/g$h;

    .line 2
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    iget-wide v2, v0, Lb/a/b/c/b/g$h;->a:J

    invoke-static {v1, v2, v3}, Lb/a/b/c/b/g;->s(Lb/a/b/c/b/g;J)J

    .line 3
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v1}, Lb/a/b/c/b/g;->t(Lb/a/b/c/b/g;)I

    move-result v1

    iget v2, v0, Lb/a/b/c/b/g$h;->d:I

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v1, v2}, Lb/a/b/c/b/g;->u(Lb/a/b/c/b/g;I)I

    .line 5
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v1}, Lb/a/b/c/b/g;->t(Lb/a/b/c/b/g;)I

    move-result v2

    invoke-static {v1, v2}, Lb/a/b/c/b/g;->d(Lb/a/b/c/b/g;I)V

    .line 6
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v1}, Lb/a/b/c/b/g;->b(Lb/a/b/c/b/g;)I

    move-result v1

    iget-object v2, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->t(Lb/a/b/c/b/g;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 7
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v1}, Lb/a/b/c/b/g;->t(Lb/a/b/c/b/g;)I

    move-result v2

    invoke-static {v1, v2}, Lb/a/b/c/b/g;->c(Lb/a/b/c/b/g;I)I

    .line 8
    :cond_0
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v1}, Lb/a/b/c/b/g;->e(Lb/a/b/c/b/g;)I

    move-result v1

    iget-object v2, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->t(Lb/a/b/c/b/g;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v1}, Lb/a/b/c/b/g;->t(Lb/a/b/c/b/g;)I

    move-result v2

    invoke-static {v1, v2}, Lb/a/b/c/b/g;->f(Lb/a/b/c/b/g;I)I

    .line 10
    :cond_1
    iget-object v1, v0, Lb/a/b/c/b/g$h;->e:Ljava/util/ArrayList;

    .line 11
    iget-object v2, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lb/a/b/c/b/g;->p(Lb/a/b/c/b/g;J)J

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget v3, v0, Lb/a/b/c/b/g$h;->b:I

    iget-object v4, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v4}, Lb/a/b/c/b/g;->w(Lb/a/b/c/b/g;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 14
    iget v4, v0, Lb/a/b/c/b/g$h;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v5}, Lb/a/b/c/b/g;->b(Lb/a/b/c/b/g;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_4

    .line 15
    rem-int/lit16 v5, v3, 0x1f4

    .line 16
    iget-object v6, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v6}, Lb/a/b/c/b/g;->v(Lb/a/b/c/b/g;)[J

    move-result-object v6

    iget-wide v7, v0, Lb/a/b/c/b/g$h;->a:J

    aput-wide v7, v6, v5

    .line 17
    iget v6, v0, Lb/a/b/c/b/g$h;->b:I

    sub-int v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/a/b/c/b/m;

    .line 18
    invoke-virtual {v6}, Lb/a/b/c/b/n;->a()J

    move-result-wide v7

    .line 19
    iget-object v9, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v9}, Lb/a/b/c/b/g;->h(Lb/a/b/c/b/g;)[J

    move-result-object v9

    aget-wide v10, v9, v5

    cmp-long v9, v10, v7

    if-eqz v9, :cond_3

    .line 20
    iget-object v9, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v9}, Lb/a/b/c/b/g;->h(Lb/a/b/c/b/g;)[J

    move-result-object v9

    aput-wide v7, v9, v5

    .line 21
    iget-object v7, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v7}, Lb/a/b/c/b/g;->i(Lb/a/b/c/b/g;)[Lb/a/b/c/b/m;

    move-result-object v7

    aput-object v6, v7, v5

    .line 22
    iget-object v5, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v5}, Lb/a/b/c/b/g;->j(Lb/a/b/c/b/g;)I

    move-result v5

    if-lt v3, v5, :cond_3

    iget-object v5, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v5}, Lb/a/b/c/b/g;->e(Lb/a/b/c/b/g;)I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 23
    iget-object v5, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v5, v3}, Lb/a/b/c/b/g;->k(Lb/a/b/c/b/g;I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    .line 24
    :cond_5
    :goto_1
    iget v1, v0, Lb/a/b/c/b/g$h;->c:I

    if-lez v1, :cond_6

    .line 25
    iget-object v1, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    iget-wide v3, v0, Lb/a/b/c/b/g$h;->a:J

    invoke-static {v1, v3, v4}, Lb/a/b/c/b/g;->p(Lb/a/b/c/b/g;J)J

    .line 26
    iget-object v0, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v0}, Lb/a/b/c/b/g;->g(Lb/a/b/c/b/g;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/a/b/c/b/g$g;->b:Lb/a/b/c/b/g;

    invoke-static {v3}, Lb/a/b/c/b/g;->n(Lb/a/b/c/b/g;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/b/g$g;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
