.class public Lcom/hpplay/nanohttpd/a/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/nanohttpd/a/a/c/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Response"


# instance fields
.field private b:Lcom/hpplay/nanohttpd/a/a/c/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/InputStream;

.field private e:J

.field private final f:Ljava/util/Map;
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

.field private final g:Ljava/util/Map;
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

.field private h:Lcom/hpplay/nanohttpd/a/a/b/a;

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/hpplay/nanohttpd/a/a/c/c$a;


# direct methods
.method protected constructor <init>(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v2, Lcom/hpplay/nanohttpd/a/a/c/c$1;

    invoke-direct {v2, p0}, Lcom/hpplay/nanohttpd/a/a/c/c$1;-><init>(Lcom/hpplay/nanohttpd/a/a/c/c;)V

    iput-object v2, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->f:Ljava/util/Map;

    .line 105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->g:Ljava/util/Map;

    .line 121
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/c$a;->a:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    iput-object v2, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->l:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    .line 137
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->b:Lcom/hpplay/nanohttpd/a/a/c/b;

    .line 138
    iput-object p2, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->c:Ljava/lang/String;

    .line 139
    if-nez p3, :cond_1

    .line 140
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v0, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    .line 141
    iput-wide v4, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->e:J

    .line 146
    :goto_0
    iget-wide v2, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->e:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->i:Z

    .line 147
    iput-boolean v1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->j:Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->k:Ljava/util/List;

    .line 149
    return-void

    .line 143
    :cond_1
    iput-object p3, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    .line 144
    iput-wide p4, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->e:J

    goto :goto_0
.end method

.method public static a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 6

    .prologue
    .line 393
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/c/c;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/nanohttpd/a/a/c/c;-><init>(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 7

    .prologue
    .line 404
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/c/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/nanohttpd/a/a/c/c;-><init>(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 411
    new-instance v1, Lcom/hpplay/nanohttpd/a/a/a/a;

    invoke-direct {v1, p1}, Lcom/hpplay/nanohttpd/a/a/a/a;-><init>(Ljava/lang/String;)V

    .line 412
    if-nez p2, :cond_0

    .line 413
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v4, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    .line 417
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/hpplay/nanohttpd/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 418
    invoke-virtual {v0, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-virtual {v1}, Lcom/hpplay/nanohttpd/a/a/a/a;->f()Lcom/hpplay/nanohttpd/a/a/a/a;

    move-result-object v1

    .line 421
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/nanohttpd/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 426
    :goto_1
    invoke-virtual {v1}, Lcom/hpplay/nanohttpd/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v0, v0

    int-to-long v4, v0

    invoke-static {p0, v1, v2, v4, v5}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const-string v2, "Response"

    const-string v3, "encoding problem, responding nothing"

    invoke-static {v2, v3, v0}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    new-array v0, v4, [B

    goto :goto_1
.end method

.method public static a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;[B)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 4

    .prologue
    .line 397
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p2

    int-to-long v2, v1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/nanohttpd/a/a/c/c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->g:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/io/OutputStream;J)V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->h:Lcom/hpplay/nanohttpd/a/a/b/a;

    sget-object v1, Lcom/hpplay/nanohttpd/a/a/b/a;->e:Lcom/hpplay/nanohttpd/a/a/b/a;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->i:Z

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/c/a;

    invoke-direct {v0, p1}, Lcom/hpplay/nanohttpd/a/a/c/a;-><init>(Ljava/io/OutputStream;)V

    .line 302
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/hpplay/nanohttpd/a/a/c/c;->b(Ljava/io/OutputStream;J)V

    .line 304
    :try_start_0
    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/c/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 311
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/nanohttpd/a/a/c/c;->b(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method

.method private b(Ljava/io/OutputStream;J)V
    .locals 4

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/c/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const/4 v1, 0x0

    .line 319
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    if-eqz v0, :cond_0

    .line 326
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/hpplay/nanohttpd/a/a/c/c;->c(Ljava/io/OutputStream;J)V

    .line 327
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 330
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/nanohttpd/a/a/c/c;->c(Ljava/io/OutputStream;J)V

    goto :goto_1
.end method

.method private c(Ljava/io/OutputStream;J)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 345
    const-wide/32 v4, 0x40000

    .line 346
    long-to-int v0, v4

    new-array v8, v0, [B

    .line 347
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    move-wide v6, p2

    .line 348
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_0

    if-eqz v0, :cond_1

    .line 349
    :cond_0
    if-eqz v0, :cond_3

    move-wide v2, v4

    .line 350
    :goto_2
    iget-object v9, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    long-to-int v2, v2

    invoke-virtual {v9, v8, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 351
    if-gtz v2, :cond_4

    .line 352
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 367
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 347
    goto :goto_0

    .line 349
    :cond_3
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_2

    .line 356
    :cond_4
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v8, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_3
    if-nez v0, :cond_5

    .line 364
    int-to-long v2, v2

    sub-long v2, v6, v2

    :goto_4
    move-wide v6, v2

    .line 366
    goto :goto_1

    .line 357
    :catch_0
    move-exception v3

    .line 361
    const-string v9, "Response"

    invoke-static {v9, v3}, Lcom/hpplay/nanohttpd/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move-wide v2, v6

    goto :goto_4
.end method

.method public static d(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 2

    .prologue
    .line 434
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/d;->b:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v1, "text/html"

    invoke-static {v0, v1, p0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;J)J
    .locals 4

    .prologue
    .line 285
    const-string v0, "content-length"

    invoke-virtual {p0, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 296
    :goto_0
    return-wide p2

    .line 290
    :catch_0
    move-exception v1

    .line 291
    const-string v1, "Response"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content-length was no number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->k:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/hpplay/nanohttpd/a/a/b/a;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->h:Lcom/hpplay/nanohttpd/a/a/b/a;

    .line 383
    return-void
.end method

.method public a(Lcom/hpplay/nanohttpd/a/a/c/b;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->b:Lcom/hpplay/nanohttpd/a/a/c/b;

    .line 387
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    .line 375
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 6

    .prologue
    .line 232
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 233
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->b:Lcom/hpplay/nanohttpd/a/a/c/b;

    if-nez v1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/Error;

    const-string v1, "sendResponse(): Status can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string v1, "Response"

    const-string v2, "Could not send response to the client"

    invoke-static {v1, v2, v0}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    :goto_0
    return-void

    .line 239
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Lcom/hpplay/nanohttpd/a/a/a/a;

    iget-object v5, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/hpplay/nanohttpd/a/a/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/hpplay/nanohttpd/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 240
    const-string v1, "HTTP/1.1 "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->b:Lcom/hpplay/nanohttpd/a/a/c/b;

    invoke-interface {v3}, Lcom/hpplay/nanohttpd/a/a/c/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, " \r\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 241
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 242
    const-string v1, "Content-Type"

    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v3}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_1
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lcom/hpplay/nanohttpd/a/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 245
    const-string v1, "Date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    const-string v3, "Set-Cookie"

    invoke-virtual {p0, v2, v3, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :cond_4
    const-string v0, "connection"

    invoke-virtual {p0, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 254
    const-string v1, "Connection"

    iget-boolean v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->j:Z

    if-eqz v0, :cond_9

    const-string v0, "keep-alive"

    :goto_3
    invoke-virtual {p0, v2, v1, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_5
    const-string v0, "content-length"

    invoke-virtual {p0, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->d(Z)Lcom/hpplay/nanohttpd/a/a/c/c;

    .line 259
    :cond_6
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/c/c;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 260
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v2, v0, v1}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->c(Z)V

    .line 263
    :cond_7
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->e:J

    .line 264
    :goto_4
    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->h:Lcom/hpplay/nanohttpd/a/a/b/a;

    sget-object v4, Lcom/hpplay/nanohttpd/a/a/b/a;->e:Lcom/hpplay/nanohttpd/a/a/b/a;

    if-eq v3, v4, :cond_b

    iget-boolean v3, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->i:Z

    if-eqz v3, :cond_b

    .line 265
    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {p0, v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_8
    :goto_5
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 270
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 271
    invoke-direct {p0, p1, v0, v1}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/OutputStream;J)V

    .line 272
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 273
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 254
    :cond_9
    const-string v0, "close"

    goto :goto_3

    .line 263
    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_4

    .line 266
    :cond_b
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/c/c;->g()Z

    move-result v3

    if-nez v3, :cond_8

    .line 267
    invoke-virtual {p0, v2, v0, v1}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/io/PrintWriter;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_5
.end method

.method protected a(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 282
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->f:Ljava/util/Map;

    const-string v1, "connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->f:Ljava/util/Map;

    const-string v1, "connection"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->g:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->j:Z

    .line 226
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 201
    const-string v0, "close"

    const-string v1, "connection"

    invoke-virtual {p0, v1}, Lcom/hpplay/nanohttpd/a/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->c:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->i:Z

    .line 371
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 156
    :cond_0
    return-void
.end method

.method public d(Z)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 1

    .prologue
    .line 438
    if-eqz p1, :cond_0

    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/c$a;->b:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    :goto_0
    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->l:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    .line 439
    return-object p0

    .line 438
    :cond_0
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/c$a;->c:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/hpplay/nanohttpd/a/a/b/a;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->h:Lcom/hpplay/nanohttpd/a/a/b/a;

    return-object v0
.end method

.method public f()Lcom/hpplay/nanohttpd/a/a/c/b;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->b:Lcom/hpplay/nanohttpd/a/a/c/b;

    return-object v0
.end method

.method public g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 445
    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->l:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    sget-object v3, Lcom/hpplay/nanohttpd/a/a/c/c$a;->a:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    if-ne v2, v3, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/c/c;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/c/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/c/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :cond_2
    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/c/c;->l:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    sget-object v3, Lcom/hpplay/nanohttpd/a/a/c/c$a;->b:Lcom/hpplay/nanohttpd/a/a/c/c$a;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
