.class public Lc/c/a/d/c/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lc/c/a/d/d/d;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/c/a/d/d/d;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/d/c/d;->a:Lc/c/a/d/d/d;

    invoke-static {p2}, Lc/c/a/d/d/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/c/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/d/c/d;->a:Lc/c/a/d/d/d;

    invoke-virtual {v0}, Lc/c/a/d/d/a;->i()Lc/c/a/d/d/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/c/a/d/d/h;->a:Lc/c/a/a;

    iget-object v1, p0, Lc/c/a/d/c/d;->a:Lc/c/a/d/d/d;

    invoke-virtual {v1}, Lc/c/a/d/d/d;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/d/c/d;->a:Lc/c/a/d/d/d;

    invoke-virtual {v2}, Lc/c/a/d/d/d;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/c/a/d/c/d;->b:Ljava/lang/Object;

    const-string v4, "="

    invoke-virtual {v1, v2, v4, v3}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {v0, v1}, Lc/c/a/a;->l(Lc/c/a/d/c/f;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/d/c/d;->a:Lc/c/a/d/d/d;

    invoke-virtual {v0}, Lc/c/a/d/d/a;->i()Lc/c/a/d/d/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/c/a/d/d/h;->a:Lc/c/a/a;

    iget-object v1, p0, Lc/c/a/d/c/d;->a:Lc/c/a/d/d/d;

    invoke-virtual {v1}, Lc/c/a/d/d/d;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/d/c/d;->a:Lc/c/a/d/d/d;

    invoke-virtual {v2}, Lc/c/a/d/d/d;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/c/a/d/c/d;->b:Ljava/lang/Object;

    const-string v4, "="

    invoke-virtual {v1, v2, v4, v3}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {v0, v1}, Lc/c/a/a;->n(Lc/c/a/d/c/f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
