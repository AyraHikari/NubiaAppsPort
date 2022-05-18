.class public Lcom/umeng/analytics/h$a;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 333
    const-string v0, ".um"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/h$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/h$a;->a:I

    .line 425
    new-instance v0, Lcom/umeng/analytics/h$a$2;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/h$a$2;-><init>(Lcom/umeng/analytics/h$a;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    .line 337
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    .line 338
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 341
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/h$b;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_0

    array-length v1, v2

    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    .line 357
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 358
    array-length v1, v2

    add-int/lit8 v3, v1, -0xa

    .line 359
    new-instance v1, Lcom/umeng/analytics/h$a$1;

    invoke-direct {v1, p0, v3}, Lcom/umeng/analytics/h$a$1;-><init>(Lcom/umeng/analytics/h$a;I)V

    invoke-static {v1}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    move v1, v0

    .line 370
    :goto_0
    if-ge v1, v3, :cond_0

    .line 371
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_0
    if-eqz v2, :cond_3

    array-length v1, v2

    if-lez v1, :cond_3

    .line 376
    iget-object v1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v1}, Lcom/umeng/analytics/h$b;->a(Ljava/io/File;)V

    .line 378
    array-length v1, v2

    .line 380
    :goto_1
    if-ge v0, v1, :cond_2

    .line 383
    :try_start_0
    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Lcom/umeng/analytics/h$b;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 387
    if-eqz v3, :cond_1

    .line 388
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 380
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :catch_0
    move-exception v3

    .line 388
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    throw v0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/h$b;->c(Ljava/io/File;)V

    .line 394
    :cond_3
    return-void
.end method

.method public a([B)V
    .locals 6

    .prologue
    .line 397
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "um_cache_%d.env"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    :try_start_0
    invoke-static {v1, p1}, Lu/aly/bk;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 346
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 410
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 411
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 412
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 420
    array-length v0, v0

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
