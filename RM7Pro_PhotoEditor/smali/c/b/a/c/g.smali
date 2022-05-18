.class Lc/b/a/c/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lc/b/a/c/c;


# direct methods
.method constructor <init>(Lc/b/a/c/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/a/c/g;->a:Lc/b/a/c/c;

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Lc/b/a/c/b;
    .locals 5

    iget-object v0, p0, Lc/b/a/c/g;->a:Lc/b/a/c/c;

    invoke-static {p1, v0}, Lc/b/a/c/f;->m(Ljava/io/InputStream;Lc/b/a/c/c;)Lc/b/a/c/f;

    move-result-object p1

    new-instance v0, Lc/b/a/c/b;

    invoke-virtual {p1}, Lc/b/a/c/f;->c()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/b/a/c/b;-><init>(Ljava/nio/ByteOrder;)V

    :goto_0
    invoke-virtual {p1}, Lc/b/a/c/f;->l()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    const-string v3, "ExifReader"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lc/b/a/c/f;->g()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Lc/b/a/c/f;->o([B)I

    move-result v4

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lc/b/a/c/f;->f()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lc/b/a/c/b;->p(I[B)V

    goto :goto_0

    :cond_1
    const-string v1, "Failed to read the strip bytes"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lc/b/a/c/f;->d()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Lc/b/a/c/f;->o([B)I

    move-result v4

    if-ne v1, v4, :cond_3

    invoke-virtual {v0, v2}, Lc/b/a/c/b;->o([B)V

    goto :goto_0

    :cond_3
    const-string v1, "Failed to read the compressed thumbnail"

    :goto_1
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lc/b/a/c/f;->h()Lc/b/a/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lc/b/a/c/h;->n()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v1}, Lc/b/a/c/f;->p(Lc/b/a/c/h;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lc/b/a/c/f;->h()Lc/b/a/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lc/b/a/c/h;->A()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1, v1}, Lc/b/a/c/f;->z(Lc/b/a/c/h;)V

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {v1}, Lc/b/a/c/h;->p()I

    move-result v2

    invoke-virtual {v0, v2}, Lc/b/a/c/b;->g(I)Lc/b/a/c/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc/b/a/c/i;->i(Lc/b/a/c/h;)Lc/b/a/c/h;

    goto :goto_0

    :cond_7
    new-instance v1, Lc/b/a/c/i;

    invoke-virtual {p1}, Lc/b/a/c/f;->e()I

    move-result v2

    invoke-direct {v1, v2}, Lc/b/a/c/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lc/b/a/c/b;->a(Lc/b/a/c/i;)V

    goto :goto_0

    :cond_8
    return-object v0
.end method
