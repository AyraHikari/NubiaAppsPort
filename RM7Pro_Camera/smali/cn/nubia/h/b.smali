.class public Lcn/nubia/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, 0x38

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    shr-long v2, p0, v0

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    and-long/2addr p0, v4

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x7

    aput-byte p0, v1, p1

    return-object v1
.end method
