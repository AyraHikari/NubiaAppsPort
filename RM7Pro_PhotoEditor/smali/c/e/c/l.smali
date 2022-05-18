.class public Lc/e/c/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(ILjava/lang/String;Landroid/content/Context;)Lc/e/c/k;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Lc/e/c/j;

    invoke-direct {p0, p1, p2}, Lc/e/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "type is not support"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lc/e/c/h;

    invoke-direct {p0, p1}, Lc/e/c/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lc/e/c/e;

    invoke-direct {p0, p1}, Lc/e/c/e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lc/e/c/c;

    invoke-direct {p0, p1}, Lc/e/c/c;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
