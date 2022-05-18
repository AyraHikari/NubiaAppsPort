.class public Lcom/hpplay/nanohttpd/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/nanohttpd/a/a/c;


# static fields
.field public static final a:Ljava/lang/String; = "postData"

.field public static final b:I = 0x2000

.field public static final c:I = 0x400

.field private static final d:Ljava/lang/String; = "Response"

.field private static final e:I = 0x200

.field private static final f:I = 0x400


# instance fields
.field private final g:Lcom/hpplay/nanohttpd/a/a/d;

.field private final h:Lcom/hpplay/nanohttpd/a/a/e/e;

.field private final i:Ljava/io/OutputStream;

.field private final j:Ljava/io/BufferedInputStream;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/hpplay/nanohttpd/a/a/b/a;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/hpplay/nanohttpd/a/a/a/c;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hpplay/nanohttpd/a/a/d;Lcom/hpplay/nanohttpd/a/a/e/e;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/b;->g:Lcom/hpplay/nanohttpd/a/a/d;

    .line 120
    iput-object p2, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    .line 121
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    .line 122
    iput-object p4, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/nanohttpd/a/a/d;Lcom/hpplay/nanohttpd/a/a/e/e;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/b;->g:Lcom/hpplay/nanohttpd/a/a/d;

    .line 127
    iput-object p2, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    .line 128
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    .line 129
    iput-object p4, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    .line 130
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "127.0.0.1"

    :goto_0
    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->s:Ljava/lang/String;

    .line 131
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "localhost"

    :goto_1
    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->t:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    .line 133
    return-void

    .line 130
    :cond_2
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a([BI)I
    .locals 2

    .prologue
    .line 301
    :goto_0
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 302
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 304
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private a(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 679
    const-string v0, ""

    .line 680
    if-lez p3, :cond_0

    .line 681
    const/4 v2, 0x0

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    invoke-interface {v0, p4}, Lcom/hpplay/nanohttpd/a/a/e/e;->a(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/e/d;

    move-result-object v0

    .line 684
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 685
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 686
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 687
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    add-int v5, p2, p3

    invoke-virtual {v4, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 688
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 689
    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e/d;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 693
    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 696
    :cond_0
    return-object v0

    .line 690
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 691
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 693
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 690
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/hpplay/nanohttpd/a/a/a/a;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/nanohttpd/a/a/a/a;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    const/4 v8, 0x0

    .line 199
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/nanohttpd/a/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/b;->a(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v13

    .line 200
    array-length v2, v13

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 201
    new-instance v2, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v3, Lcom/hpplay/nanohttpd/a/a/c/d;->m:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v4, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    invoke-direct {v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :catch_0
    move-exception v2

    .line 294
    throw v2

    .line 204
    :cond_0
    const/16 v2, 0x400

    :try_start_1
    new-array v14, v2, [B

    .line 205
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_f

    .line 206
    aget v2, v13, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x400

    if-ge v2, v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move v11, v2

    .line 208
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 209
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v14, v4, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/nanohttpd/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v15, v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 214
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/nanohttpd/a/a/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    :cond_1
    new-instance v2, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v3, Lcom/hpplay/nanohttpd/a/a/c/d;->m:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v4, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    invoke-direct {v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    :catch_1
    move-exception v2

    .line 296
    new-instance v3, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v4, Lcom/hpplay/nanohttpd/a/a/c/d;->C:Lcom/hpplay/nanohttpd/a/a/c/d;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_2
    const/16 v2, 0x400

    move v11, v2

    goto :goto_1

    .line 220
    :cond_3
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 222
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 223
    const/4 v6, 0x2

    move-object v9, v2

    move-object v10, v3

    .line 224
    :goto_2
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 225
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/d;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 227
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    sget-object v3, Lcom/hpplay/nanohttpd/a/a/d;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    move-object v2, v5

    move-object v3, v7

    move v4, v8

    .line 229
    :cond_4
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 230
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    const-string v7, "name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 232
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 233
    :cond_5
    const-string v7, "filename"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 234
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 238
    if-lez v4, :cond_6

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v5

    goto :goto_3

    .line 241
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    move-object v2, v5

    move-object v3, v7

    move v4, v8

    .line 246
    :cond_8
    sget-object v5, Lcom/hpplay/nanohttpd/a/a/d;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 248
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 250
    :goto_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 251
    add-int/lit8 v6, v6, 0x1

    move-object v9, v5

    move-object v10, v7

    move v8, v4

    move-object v5, v2

    move-object v7, v3

    .line 252
    goto/16 :goto_2

    .line 253
    :cond_9
    const/4 v2, 0x0

    move v3, v6

    .line 254
    :goto_5
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_a

    .line 255
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/hpplay/nanohttpd/a/a/b;->a([BI)I

    move-result v2

    move v3, v4

    goto :goto_5

    .line 258
    :cond_a
    add-int/lit8 v3, v11, -0x4

    if-lt v2, v3, :cond_b

    .line 259
    new-instance v2, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v3, Lcom/hpplay/nanohttpd/a/a/c/d;->C:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v4, "Multipart header size exceeds MAX_HEADER_SIZE."

    invoke-direct {v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_b
    aget v3, v13, v12

    add-int v4, v3, v2

    .line 262
    add-int/lit8 v2, v12, 0x1

    aget v2, v13, v2

    add-int/lit8 v6, v2, -0x4

    .line 264
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 267
    if-nez v2, :cond_10

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 272
    :goto_6
    if-nez v9, :cond_c

    .line 274
    sub-int v2, v6, v4

    new-array v2, v2, [B

    .line 275
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 277
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/nanohttpd/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :goto_7
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_0

    .line 280
    :cond_c
    sub-int v2, v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/hpplay/nanohttpd/a/a/b;->a(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 282
    move-object/from16 v0, p4

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :goto_8
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 284
    :cond_d
    const/4 v2, 0x2

    .line 285
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 288
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    .line 298
    :cond_f
    return-void

    :cond_10
    move-object v3, v2

    goto :goto_6

    :cond_11
    move-object v5, v9

    goto/16 :goto_4
.end method

.method private a(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v1, Lcom/hpplay/nanohttpd/a/a/c/d;->m:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v2, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->C:Lcom/hpplay/nanohttpd/a/a/c/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 151
    :cond_1
    :try_start_1
    const-string v0, "method"

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v1, Lcom/hpplay/nanohttpd/a/a/c/d;->m:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v2, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 160
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 161
    if-ltz v1, :cond_4

    .line 162
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/hpplay/nanohttpd/a/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 172
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->u:Ljava/lang/String;

    .line 178
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 180
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 181
    if-ltz v2, :cond_3

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 165
    :cond_4
    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 175
    :cond_5
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->u:Ljava/lang/String;

    .line 176
    const-string v0, "Response"

    const-string v2, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-static {v0, v2}, Lcom/hpplay/nanohttpd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_6
    const-string v0, "uri"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 312
    if-nez p1, :cond_1

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->r:Ljava/lang/String;

    .line 341
    :cond_0
    return-void

    .line 317
    :cond_1
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/b;->r:Ljava/lang/String;

    .line 318
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, "&"

    invoke-direct {v3, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 321
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 325
    if-ltz v2, :cond_3

    .line 326
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 327
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 333
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 334
    if-nez v0, :cond_2

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_3
    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    const-string v0, ""

    move-object v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method private a(Ljava/nio/ByteBuffer;[B)[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 496
    new-array v1, v2, [I

    .line 497
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 533
    :goto_0
    return-object v1

    .line 502
    :cond_0
    array-length v0, p2

    add-int/lit16 v0, v0, 0x1000

    new-array v7, v0, [B

    .line 504
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v3, v7

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 505
    :goto_1
    invoke-virtual {p1, v7, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 506
    array-length v3, p2

    sub-int/2addr v0, v3

    move-object v3, v1

    move v1, v2

    :cond_1
    move v6, v2

    .line 510
    :goto_2
    if-ge v6, v0, :cond_6

    move-object v4, v3

    move v3, v2

    .line 511
    :goto_3
    array-length v5, p2

    if-ge v3, v5, :cond_2

    .line 512
    add-int v5, v6, v3

    aget-byte v5, v7, v5

    aget-byte v8, p2, v3

    if-eq v5, v8, :cond_4

    .line 510
    :cond_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v3, v4

    goto :goto_2

    .line 504
    :cond_3
    array-length v0, v7

    goto :goto_1

    .line 514
    :cond_4
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    .line 516
    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    .line 517
    array-length v8, v4

    invoke-static {v4, v2, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    array-length v4, v4

    add-int v8, v1, v6

    aput v8, v5, v4

    move-object v4, v5

    .line 511
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 523
    :cond_6
    add-int/2addr v1, v0

    .line 526
    array-length v0, v7

    array-length v4, p2

    sub-int/2addr v0, v4

    array-length v4, p2

    invoke-static {v7, v0, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    array-length v0, v7

    array-length v4, p2

    sub-int/2addr v0, v4

    .line 530
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 531
    :cond_7
    array-length v4, p2

    invoke-virtual {p1, v7, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 532
    if-gtz v0, :cond_1

    move-object v1, v3

    .line 533
    goto :goto_0
.end method

.method private b([BI)I
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v0, 0x0

    const/16 v3, 0xa

    .line 473
    move v1, v0

    .line 474
    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p2, :cond_0

    .line 477
    aget-byte v2, p1, v1

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x3

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_1

    .line 478
    add-int/lit8 v0, v1, 0x4

    .line 487
    :cond_0
    :goto_1
    return v0

    .line 482
    :cond_1
    aget-byte v2, p1, v1

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_2

    .line 483
    add-int/lit8 v0, v1, 0x2

    goto :goto_1

    .line 485
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private m()Ljava/io/RandomAccessFile;
    .locals 3

    .prologue
    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hpplay/nanohttpd/a/a/e/e;->a(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/e/d;

    move-result-object v0

    .line 583
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 345
    const/4 v1, 0x0

    .line 352
    const/16 v0, 0x2000

    :try_start_0
    new-array v3, v0, [B

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->k:I

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    .line 357
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    const/4 v4, 0x0

    const/16 v5, 0x2000

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 367
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 369
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 371
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "NanoHttpd Shutdown"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    :catch_0
    move-exception v0

    .line 444
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 464
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    invoke-interface {v1}, Lcom/hpplay/nanohttpd/a/a/e/e;->a()V

    throw v0

    .line 360
    :catch_1
    move-exception v0

    .line 361
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 445
    :catch_2
    move-exception v0

    .line 449
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 362
    :catch_3
    move-exception v0

    .line 363
    :try_start_6
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 365
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "NanoHttpd Shutdown"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 450
    :catch_4
    move-exception v0

    .line 451
    :try_start_7
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->C:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v3, "text/plain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSL PROTOCOL FAILURE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 452
    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/OutputStream;)V

    .line 453
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 463
    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e/e;->a()V

    .line 466
    :goto_0
    return-void

    .line 379
    :cond_0
    :try_start_8
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    iget v4, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    iget v5, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 373
    :cond_1
    if-lez v0, :cond_2

    .line 374
    iget v4, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    .line 375
    iget v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    invoke-direct {p0, v3, v0}, Lcom/hpplay/nanohttpd/a/a/b;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->k:I

    .line 376
    iget v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->k:I

    if-lez v0, :cond_0

    .line 382
    :cond_2
    iget v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->k:I

    iget v4, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    if-ge v0, v4, :cond_3

    .line 383
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 384
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    iget v4, p0, Lcom/hpplay/nanohttpd/a/a/b;->k:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 387
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->o:Ljava/util/Map;

    .line 388
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    .line 395
    :goto_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x0

    iget v7, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    invoke-direct {v5, v3, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 398
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 399
    iget-object v4, p0, Lcom/hpplay/nanohttpd/a/a/b;->o:Ljava/util/Map;

    iget-object v5, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/hpplay/nanohttpd/a/a/b;->a(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 401
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->s:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    const-string v4, "remote-addr"

    iget-object v5, p0, Lcom/hpplay/nanohttpd/a/a/b;->s:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    const-string v4, "http-client-ip"

    iget-object v5, p0, Lcom/hpplay/nanohttpd/a/a/b;->s:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_4
    const-string v0, "method"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/b/a;->a(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->n:Lcom/hpplay/nanohttpd/a/a/b/a;

    .line 407
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->n:Lcom/hpplay/nanohttpd/a/a/b/a;

    if-nez v0, :cond_6

    .line 408
    new-instance v2, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v4, Lcom/hpplay/nanohttpd/a/a/c/d;->m:Lcom/hpplay/nanohttpd/a/a/c/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BAD REQUEST: Syntax error. HTTP verb "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v0, "method"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " unhandled."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 454
    :catch_5
    move-exception v0

    .line 455
    :try_start_9
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->C:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v3, "text/plain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 456
    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/OutputStream;)V

    .line 457
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 463
    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e/e;->a()V

    goto/16 :goto_0

    .line 391
    :cond_5
    :try_start_a
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 458
    :catch_6
    move-exception v0

    .line 459
    :try_start_b
    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/d$a;->a()Lcom/hpplay/nanohttpd/a/a/c/d;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/d$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 460
    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/OutputStream;)V

    .line 461
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 463
    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e/e;->a()V

    goto/16 :goto_0

    .line 411
    :cond_6
    :try_start_c
    const-string v0, "uri"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->m:Ljava/lang/String;

    .line 413
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/a/c;

    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/hpplay/nanohttpd/a/a/a/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->q:Lcom/hpplay/nanohttpd/a/a/a/c;

    .line 415
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    const-string v3, "connection"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    const-string v3, "HTTP/1.1"

    iget-object v4, p0, Lcom/hpplay/nanohttpd/a/a/b;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_7

    const-string v3, "(?i).*close.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    move v2, v0

    .line 423
    :cond_8
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->g:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v0, p0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Lcom/hpplay/nanohttpd/a/a/c;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v1

    .line 427
    if-nez v1, :cond_9

    .line 428
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->C:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v3, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v0, v2, v3}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_9
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    const-string v3, "accept-encoding"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 431
    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/b;->q:Lcom/hpplay/nanohttpd/a/a/a/c;

    invoke-virtual {v3, v1}, Lcom/hpplay/nanohttpd/a/a/a/c;->a(Lcom/hpplay/nanohttpd/a/a/c/c;)V

    .line 432
    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/b;->n:Lcom/hpplay/nanohttpd/a/a/b/a;

    invoke-virtual {v1, v3}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/b/a;)V

    .line 433
    if-eqz v0, :cond_a

    const-string v3, "gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 434
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->d(Z)Lcom/hpplay/nanohttpd/a/a/c/c;

    .line 436
    :cond_b
    invoke-virtual {v1, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->b(Z)V

    .line 437
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->i:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/OutputStream;)V

    .line 439
    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/hpplay/nanohttpd/a/a/c/c;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 440
    :cond_c
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "NanoHttpd Shutdown"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/hpplay/nanohttpd/a/a/d$a; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 463
    :cond_d
    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->h:Lcom/hpplay/nanohttpd/a/a/e/e;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e/e;->a()V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 609
    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/b;->j()J

    move-result-wide v2

    .line 616
    const-wide/16 v4, 0x400

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 617
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v4

    move-object v6, v1

    move-object v4, v0

    .line 625
    :goto_0
    const/16 v0, 0x200

    :try_start_1
    new-array v7, v0, [B

    move-wide v0, v2

    .line 626
    :cond_0
    :goto_1
    iget v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    if-ltz v2, :cond_2

    cmp-long v2, v0, v10

    if-lez v2, :cond_2

    .line 627
    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    const/4 v3, 0x0

    const-wide/16 v8, 0x200

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v2, v7, v3, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    iput v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    .line 628
    iget v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 629
    iget v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    if-lez v2, :cond_0

    .line 630
    const/4 v2, 0x0

    iget v3, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    invoke-interface {v4, v7, v2, v3}, Ljava/io/DataOutput;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 670
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    throw v0

    .line 620
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/hpplay/nanohttpd/a/a/b;->m()Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    .line 621
    goto :goto_0

    .line 635
    :cond_2
    if-eqz v5, :cond_3

    .line 636
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .line 644
    :goto_3
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/b/a;->c:Lcom/hpplay/nanohttpd/a/a/b/a;

    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->n:Lcom/hpplay/nanohttpd/a/a/b/a;

    invoke-virtual {v0, v2}, Lcom/hpplay/nanohttpd/a/a/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 645
    new-instance v2, Lcom/hpplay/nanohttpd/a/a/a/a;

    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    const-string v3, "content-type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/hpplay/nanohttpd/a/a/a/a;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2}, Lcom/hpplay/nanohttpd/a/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 647
    invoke-virtual {v2}, Lcom/hpplay/nanohttpd/a/a/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 648
    if-nez v0, :cond_4

    .line 649
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/d$a;

    sget-object v1, Lcom/hpplay/nanohttpd/a/a/c/d;->m:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/d$a;-><init>(Lcom/hpplay/nanohttpd/a/a/c/d;Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 639
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v1, v0

    goto :goto_3

    .line 651
    :cond_4
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->o:Ljava/util/Map;

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/hpplay/nanohttpd/a/a/b;->a(Lcom/hpplay/nanohttpd/a/a/a/a;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 670
    :cond_5
    :goto_4
    invoke-static {v6}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 672
    return-void

    .line 653
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 654
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 655
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/hpplay/nanohttpd/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 657
    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v2}, Lcom/hpplay/nanohttpd/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 658
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/b;->o:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/hpplay/nanohttpd/a/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 659
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 663
    const-string v1, "postData"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 666
    :cond_8
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/b/a;->b:Lcom/hpplay/nanohttpd/a/a/b/a;

    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/b;->n:Lcom/hpplay/nanohttpd/a/a/b/a;

    invoke-virtual {v0, v2}, Lcom/hpplay/nanohttpd/a/a/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 667
    const-string v0, "content"

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/b;->a(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 670
    :catchall_1
    move-exception v0

    goto/16 :goto_2
.end method

.method public b()Lcom/hpplay/nanohttpd/a/a/a/c;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->q:Lcom/hpplay/nanohttpd/a/a/a/c;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->j:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public final e()Lcom/hpplay/nanohttpd/a/a/b/a;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->n:Lcom/hpplay/nanohttpd/a/a/b/a;

    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 562
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 563
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 564
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/b;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 567
    :cond_0
    return-object v2
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->o:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->p:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 604
    :goto_0
    return-wide v0

    .line 601
    :cond_0
    iget v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->k:I

    iget v1, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    if-ge v0, v1, :cond_1

    .line 602
    iget v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->l:I

    iget v1, p0, Lcom/hpplay/nanohttpd/a/a/b;->k:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    .line 604
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/b;->t:Ljava/lang/String;

    return-object v0
.end method
