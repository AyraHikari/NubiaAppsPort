.class Lc/e/c/e;
.super Lc/e/c/m;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lc/e/c/d;

    invoke-direct {v0}, Lc/e/c/d;-><init>()V

    invoke-direct {p0, p1, v0}, Lc/e/c/m;-><init>(Ljava/lang/String;Lc/e/c/f;)V

    return-void
.end method


# virtual methods
.method protected f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/d;

    const-string v1, "defaultword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lc/e/c/d;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "typefacepath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lc/e/c/d;->p()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lc/e/c/d;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lc/e/c/d;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lc/e/c/d;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lc/e/c/d;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "error"

    return-object p1
.end method
