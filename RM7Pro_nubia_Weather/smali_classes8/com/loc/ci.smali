.class public final Lcom/loc/ci;
.super Lcom/loc/es;
.source "TData.java"


# direct methods
.method public static a(Lcom/loc/er;BI)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/loc/er;->b(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/loc/er;->b(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/loc/er;->a(IB)V

    invoke-virtual {p0}, Lcom/loc/er;->b()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/loc/er;[B)I
    .locals 2

    const/4 v1, 0x1

    array-length v0, p1

    invoke-virtual {p0, v1, v0, v1}, Lcom/loc/er;->a(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/loc/er;->a(B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/loc/er;->a()I

    move-result v0

    return v0
.end method
