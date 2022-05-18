.class public final Lcom/loc/cu;
.super Ljava/lang/Object;
.source "OpenSdkCollectionManagerProxy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/dk;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/loc/dk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/loc/de;->b()V

    invoke-static {p4}, Lcom/loc/de;->d(Ljava/lang/String;)V

    const-string v0, "74"

    invoke-static {v0}, Lcom/loc/de;->f(Ljava/lang/String;)V

    const-string v0, "v74"

    invoke-static {v0}, Lcom/loc/de;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/loc/de;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/loc/de;->c(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/loc/de;->b(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/loc/cv;->a(Lcom/loc/dk;)V

    return-void
.end method

.method public static a(Lcom/loc/by$a;)Lcom/loc/ca;
    .locals 1

    invoke-static {}, Lcom/loc/by;->a()Lcom/loc/by;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/loc/by;->a(Lcom/loc/by$a;)Lcom/loc/ca;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/cw;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/loc/ct;->a(Ljava/util/List;)V

    return-void
.end method

.method public static a([B)Z
    .locals 1

    invoke-static {p0}, Lcom/loc/cb;->a([B)Z

    move-result v0

    return v0
.end method

.method public static a()[B
    .locals 1

    invoke-static {}, Lcom/loc/bw;->b()Lcom/loc/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bw;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[BLjava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/List",
            "<",
            "Lcom/loc/ca;",
            ">;)[B"
        }
    .end annotation

    invoke-static {}, Lcom/loc/bw;->b()Lcom/loc/bw;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/loc/bw;->a([B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/dd;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/loc/ct;->b(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->a(I)V

    return-object p0
.end method

.method public final a(J)Lcom/loc/cu;
    .locals 1

    invoke-static {p1, p2}, Lcom/loc/de;->a(J)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->j(Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->l(Ljava/lang/String;)V

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->m(Ljava/lang/String;)V

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->n(Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->o(Ljava/lang/String;)V

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->p(Ljava/lang/String;)V

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/loc/cu;
    .locals 0

    invoke-static {p1}, Lcom/loc/de;->q(Ljava/lang/String;)V

    return-object p0
.end method
