.class public final Lcn/nubia/d/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BI[BII)V
    .locals 3

    const-string v0, "src == null"

    .line 132
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "dst == null"

    .line 135
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p1, :cond_3

    if-ltz p3, :cond_3

    if-ltz p4, :cond_3

    .line 137
    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_3

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_3

    const/16 v0, 0x20

    if-gt p4, v0, :cond_1

    if-ne p0, p2, :cond_0

    if-ge p1, p3, :cond_0

    add-int v0, p1, p4

    if-ge p3, v0, :cond_0

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-ltz p4, :cond_2

    add-int v0, p3, p4

    add-int v1, p1, p4

    .line 150
    aget-byte v1, p0, v1

    aput-byte v1, p2, v0

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_2

    add-int v1, p3, v0

    add-int v2, p1, v0

    .line 155
    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string p4, "com.android.lang.System"

    const-string v0, "arraycopy failed!"

    .line 159
    invoke-static {p4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p4, p1

    :goto_2
    if-ge p4, p3, :cond_2

    sub-int v0, p4, p1

    .line 161
    aget-byte v1, p0, p4

    aput-byte v1, p2, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " srcPos="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " dst.length="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " dstPos="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " length="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
