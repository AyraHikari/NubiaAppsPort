.class public Lcn/nubia/videogenerator/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a([B[BII)V
    .locals 8

    .line 43
    div-int/lit8 v0, p2, 0x2

    .line 44
    div-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p2, :cond_1

    add-int/lit8 v5, p3, -0x1

    :goto_1
    if-ltz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    mul-int v7, p2, v5

    add-int/2addr v7, v3

    .line 50
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, -0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    mul-int/2addr p2, p3

    move p3, v2

    :goto_2
    if-ge p3, v0, :cond_3

    add-int/lit8 v3, v1, -0x1

    :goto_3
    if-ltz v3, :cond_2

    add-int/lit8 v5, v4, 0x1

    mul-int v6, v0, v3

    add-int/2addr v6, p2

    add-int/2addr v6, p3

    .line 60
    aget-byte v6, p1, v6

    aput-byte v6, p0, v4

    add-int/lit8 v3, v3, -0x1

    move v4, v5

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 p2, p2, 0x5

    .line 65
    div-int/lit8 p2, p2, 0x4

    :goto_4
    if-ge v2, v0, :cond_5

    add-int/lit8 p3, v1, -0x1

    :goto_5
    if-ltz p3, :cond_4

    add-int/lit8 v3, v4, 0x1

    mul-int v5, v0, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v2

    .line 70
    aget-byte v5, p1, v5

    aput-byte v5, p0, v4

    add-int/lit8 p3, p3, -0x1

    move v4, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static a([B[BIIII)V
    .locals 4

    .line 13
    sget v0, Lcn/nubia/videogenerator/a/e;->a:I

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-ne p4, v0, :cond_3

    if-eq p5, v3, :cond_2

    if-eq p5, v2, :cond_1

    if-eq p5, v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/videogenerator/a/e;->f([B[BII)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/videogenerator/a/e;->e([B[BII)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/videogenerator/a/e;->d([B[BII)V

    goto :goto_0

    .line 25
    :cond_3
    sget v0, Lcn/nubia/videogenerator/a/e;->b:I

    if-ne p4, v0, :cond_7

    if-eq p5, v3, :cond_6

    if-eq p5, v2, :cond_5

    if-eq p5, v1, :cond_4

    goto :goto_0

    .line 34
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/videogenerator/a/e;->c([B[BII)V

    goto :goto_0

    .line 31
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/videogenerator/a/e;->b([B[BII)V

    goto :goto_0

    .line 28
    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/videogenerator/a/e;->a([B[BII)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static b([B[BII)V
    .locals 7

    .line 78
    div-int/lit8 v0, p2, 0x2

    .line 79
    div-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p3, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_1

    add-int/lit8 v4, p2, -0x1

    :goto_1
    if-ltz v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    mul-int v6, p2, v2

    add-int/2addr v6, v4

    .line 83
    aget-byte v6, p1, v6

    aput-byte v6, p0, v3

    add-int/lit8 v4, v4, -0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    mul-int/2addr p2, p3

    add-int/lit8 v1, v1, -0x1

    move p3, v1

    :goto_2
    if-ltz p3, :cond_3

    add-int/lit8 v2, v0, -0x1

    :goto_3
    if-ltz v2, :cond_2

    add-int/lit8 v4, v3, 0x1

    mul-int v5, v0, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v2

    .line 94
    aget-byte v5, p1, v5

    aput-byte v5, p0, v3

    add-int/lit8 v2, v2, -0x1

    move v3, v4

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 p2, p2, 0x5

    .line 99
    div-int/lit8 p2, p2, 0x4

    :goto_4
    if-ltz v1, :cond_5

    add-int/lit8 p3, v0, -0x1

    :goto_5
    if-ltz p3, :cond_4

    add-int/lit8 v2, v3, 0x1

    mul-int v4, v0, v1

    add-int/2addr v4, p2

    add-int/2addr v4, p3

    .line 104
    aget-byte v4, p1, v4

    aput-byte v4, p0, v3

    add-int/lit8 p3, p3, -0x1

    move v3, v2

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static c([B[BII)V
    .locals 8

    .line 112
    div-int/lit8 v0, p2, 0x2

    .line 113
    div-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v2, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, p3, :cond_0

    add-int/lit8 v6, v4, 0x1

    mul-int v7, v5, p2

    add-int/2addr v7, v2

    .line 121
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    mul-int/2addr p2, p3

    add-int/lit8 p3, v0, -0x1

    move v2, p3

    :goto_2
    if-ltz v2, :cond_3

    move v5, v3

    :goto_3
    if-ge v5, v1, :cond_2

    add-int/lit8 v6, v4, 0x1

    mul-int v7, v0, v5

    add-int/2addr v7, p2

    add-int/2addr v7, v2

    .line 131
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 p2, p2, 0x5

    .line 137
    div-int/lit8 p2, p2, 0x4

    :goto_4
    if-ltz p3, :cond_5

    move v2, v3

    :goto_5
    if-ge v2, v1, :cond_4

    add-int/lit8 v5, v4, 0x1

    mul-int v6, v0, v2

    add-int/2addr v6, p2

    add-int/2addr v6, p3

    .line 142
    aget-byte v6, p1, v6

    aput-byte v6, p0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_5

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static d([B[BII)V
    .locals 8

    mul-int v0, p2, p3

    shr-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p2, :cond_1

    add-int/lit8 v5, p3, -0x1

    :goto_1
    if-ltz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    mul-int v7, p2, v5

    add-int/2addr v7, v3

    .line 156
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, -0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v2, p2, :cond_3

    add-int/lit8 p3, v1, -0x1

    :goto_3
    if-ltz p3, :cond_2

    mul-int v3, p2, p3

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 162
    aget-byte v5, p1, v3

    aput-byte v5, p0, v4

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 163
    aget-byte v3, p1, v3

    aput-byte v3, p0, v5

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static e([B[BII)V
    .locals 6

    shr-int/lit8 v0, p3, 0x1

    mul-int v1, p2, p3

    add-int/lit8 p3, p3, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz p3, :cond_1

    add-int/lit8 v3, p2, -0x1

    :goto_1
    if-ltz v3, :cond_0

    add-int/lit8 v4, v2, 0x1

    mul-int v5, p2, p3

    add-int/2addr v5, v3

    .line 178
    aget-byte v5, p1, v5

    aput-byte v5, p0, v2

    add-int/lit8 v3, v3, -0x1

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    add-int/lit8 p3, p2, -0x1

    :goto_3
    if-lez p3, :cond_2

    mul-int v3, p2, v0

    add-int/2addr v3, v1

    add-int/2addr v3, p3

    add-int/lit8 v4, v3, -0x1

    .line 185
    aget-byte v4, p1, v4

    aput-byte v4, p0, v2

    add-int/lit8 v4, v2, 0x1

    .line 186
    aget-byte v3, p1, v3

    aput-byte v3, p0, v4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p3, p3, -0x2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static f([B[BII)V
    .locals 8

    mul-int v0, p2, p3

    shr-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p2, :cond_1

    add-int/lit8 v5, p2, -0x1

    move v6, v2

    :goto_1
    if-ge v6, p3, :cond_0

    sub-int v7, v5, v3

    .line 206
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_2
    if-ge p3, p2, :cond_3

    add-int v3, v0, p2

    add-int/lit8 v3, v3, -0x1

    move v5, v2

    :goto_3
    if-ge v5, v1, :cond_2

    sub-int v6, v3, p3

    add-int/lit8 v7, v6, -0x1

    .line 215
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v7, v4, 0x1

    .line 216
    aget-byte v6, p1, v6

    aput-byte v6, p0, v7

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v3, p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, 0x2

    goto :goto_2

    :cond_3
    return-void
.end method
