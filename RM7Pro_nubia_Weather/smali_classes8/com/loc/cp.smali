.class public final Lcom/loc/cp;
.super Lcom/loc/es;
.source "TWifi.java"


# direct methods
.method public static a(Lcom/loc/er;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loc/er;->b(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/loc/er;->b(II)V

    invoke-virtual {p0}, Lcom/loc/er;->b()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/loc/er;[I)I
    .locals 2

    const/4 v1, 0x4

    array-length v0, p1

    invoke-virtual {p0, v1, v0, v1}, Lcom/loc/er;->a(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/loc/er;->a(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/loc/er;->a()I

    move-result v0

    return v0
.end method
