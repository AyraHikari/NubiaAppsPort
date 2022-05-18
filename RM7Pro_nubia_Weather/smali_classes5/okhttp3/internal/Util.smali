.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final UTC:Ljava/util/TimeZone;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    new-array v0, v1, [B

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 49
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 64
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 4
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .prologue
    .line 71
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 74
    :cond_1
    return-void
.end method

.method public static closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 3
    .param p0, "a"    # Ljava/io/Closeable;
    .param p1, "b"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_1

    .line 145
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/io/IOException;

    .end local v1    # "thrown":Ljava/lang/Throwable;
    throw v1

    .line 146
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "thrown":Ljava/lang/Throwable;
    throw v1

    .line 147
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :cond_3
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Error;

    .end local v1    # "thrown":Ljava/lang/Throwable;
    throw v1

    .line 148
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 86
    if-eqz p0, :cond_0

    .line 88
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 91
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 2
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 123
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-nez v2, :cond_0

    throw v0

    .line 106
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v1

    .line 107
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1

    .line 108
    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 325
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 326
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 328
    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 424
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 428
    .local v0, "c":C
    const/16 v3, 0x1f

    if-le v0, v3, :cond_0

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_1

    .line 438
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v2

    .line 434
    .restart local v0    # "c":C
    :cond_1
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiter"    # C

    .prologue
    .line 394
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    .line 397
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 394
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 397
    goto :goto_1
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 383
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 384
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 386
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 383
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 386
    goto :goto_1
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p0, "source"    # Lokio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 158
    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 408
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 418
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 412
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 413
    goto :goto_0

    .line 417
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v2

    .line 418
    goto :goto_0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 78
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 448
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Lokhttp3/HttpUrl;
    .param p1, "includeDefaultPort"    # Z

    .prologue
    .line 283
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "host":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 285
    :cond_2
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 319
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 318
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p0, v5

    .line 272
    .local v0, "a":Ljava/lang/Object;, "TT;"
    array-length v7, p1

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_0

    aget-object v1, p1, v3

    .line 273
    .local v1, "b":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 274
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v1    # "b":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 272
    .restart local v1    # "b":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "a":Ljava/lang/Object;, "TT;"
    .end local v1    # "b":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v2
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "first":[Ljava/lang/Object;, "[TT;"
    .local p2, "second":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2}, Lokhttp3/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 194
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 195
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 196
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->hex()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 197
    .end local v1    # "md5bytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static sha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p0, "s"    # Lokio/ByteString;

    .prologue
    .line 216
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 217
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 218
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 219
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static sha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p0, "s"    # Lokio/ByteString;

    .prologue
    .line 227
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 228
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 229
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 230
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 206
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 207
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->base64()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 208
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p0, "source"    # Lokio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 170
    .local v2, "now":J
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 171
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 173
    .local v4, "originalDuration":J
    :goto_0
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    int-to-long v10, p1

    invoke-virtual {p2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 175
    :try_start_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 176
    .local v1, "skipBuffer":Lokio/Buffer;
    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v1, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 177
    invoke-virtual {v1}, Lokio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 180
    .end local v1    # "skipBuffer":Lokio/Buffer;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/InterruptedIOException;
    const/4 v8, 0x0

    .line 183
    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 184
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_2
    move v6, v8

    .line 181
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :goto_3
    return v6

    .end local v4    # "originalDuration":J
    :cond_0
    move-wide v4, v6

    .line 171
    goto :goto_0

    .line 179
    .restart local v1    # "skipBuffer":Lokio/Buffer;
    .restart local v4    # "originalDuration":J
    :cond_1
    const/4 v8, 0x1

    .line 183
    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 184
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_4
    move v6, v8

    .line 179
    goto :goto_3

    .line 186
    :cond_2
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_4

    .end local v1    # "skipBuffer":Lokio/Buffer;
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_3
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_2

    .line 183
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v8

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 184
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 186
    :goto_5
    throw v8

    :cond_4
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_5
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 336
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 348
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 336
    .restart local v0    # "i":I
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 348
    goto :goto_1

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 356
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 365
    add-int/lit8 p1, v0, 0x1

    .line 368
    .end local p1    # "pos":I
    :cond_0
    return p1

    .line 356
    .restart local p1    # "pos":I
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 357
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .prologue
    .line 246
    new-instance v0, Lokhttp3/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    const/16 v6, 0x1f

    .line 293
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "length":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 294
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 295
    .local v1, "c":I
    if-le v1, v6, :cond_0

    if-ge v1, v7, :cond_0

    .line 293
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 298
    .local v0, "buffer":Lokio/Buffer;
    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5, v2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 299
    move v3, v2

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 300
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 301
    if-le v1, v6, :cond_1

    if-ge v1, v7, :cond_1

    move v5, v1

    :goto_2
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 299
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .line 301
    :cond_1
    const/16 v5, 0x3f

    goto :goto_2

    .line 303
    :cond_2
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    .line 305
    .end local v0    # "buffer":Lokio/Buffer;
    .end local v1    # "c":I
    .end local v3    # "j":I
    .end local p0    # "s":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 373
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    .line 374
    .local v1, "start":I
    invoke-static {p0, v1, p2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    .line 375
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 443
    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
