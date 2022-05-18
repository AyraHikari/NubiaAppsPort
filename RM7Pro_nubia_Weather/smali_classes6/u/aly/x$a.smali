.class public Lu/aly/x$a;
.super Ljava/lang/Object;
.source "ImprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v0, p0, Lu/aly/x$a;->a:I

    .line 265
    iput v0, p0, Lu/aly/x$a;->b:I

    .line 266
    iput v0, p0, Lu/aly/x$a;->c:I

    .line 267
    iput v0, p0, Lu/aly/x$a;->d:I

    .line 268
    iput v0, p0, Lu/aly/x$a;->e:I

    .line 269
    iput-object v1, p0, Lu/aly/x$a;->f:Ljava/lang/String;

    .line 270
    iput v0, p0, Lu/aly/x$a;->g:I

    .line 271
    iput-object v1, p0, Lu/aly/x$a;->h:Ljava/lang/String;

    .line 272
    iput v0, p0, Lu/aly/x$a;->i:I

    .line 273
    iput v0, p0, Lu/aly/x$a;->j:I

    .line 274
    iput-object v1, p0, Lu/aly/x$a;->k:Ljava/lang/String;

    .line 275
    iput-object v1, p0, Lu/aly/x$a;->l:Ljava/lang/String;

    .line 276
    iput-object v1, p0, Lu/aly/x$a;->m:Ljava/lang/String;

    .line 279
    return-void
.end method

.method constructor <init>(Lu/aly/bd;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v0, p0, Lu/aly/x$a;->a:I

    .line 265
    iput v0, p0, Lu/aly/x$a;->b:I

    .line 266
    iput v0, p0, Lu/aly/x$a;->c:I

    .line 267
    iput v0, p0, Lu/aly/x$a;->d:I

    .line 268
    iput v0, p0, Lu/aly/x$a;->e:I

    .line 269
    iput-object v1, p0, Lu/aly/x$a;->f:Ljava/lang/String;

    .line 270
    iput v0, p0, Lu/aly/x$a;->g:I

    .line 271
    iput-object v1, p0, Lu/aly/x$a;->h:Ljava/lang/String;

    .line 272
    iput v0, p0, Lu/aly/x$a;->i:I

    .line 273
    iput v0, p0, Lu/aly/x$a;->j:I

    .line 274
    iput-object v1, p0, Lu/aly/x$a;->k:Ljava/lang/String;

    .line 275
    iput-object v1, p0, Lu/aly/x$a;->l:Ljava/lang/String;

    .line 276
    iput-object v1, p0, Lu/aly/x$a;->m:Ljava/lang/String;

    .line 282
    invoke-virtual {p0, p1}, Lu/aly/x$a;->a(Lu/aly/bd;)V

    .line 283
    return-void
.end method

.method private a(Lu/aly/bd;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 474
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lu/aly/bd;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 489
    :goto_0
    return v0

    .line 478
    :cond_1
    invoke-virtual {p1}, Lu/aly/bd;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    .line 480
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 481
    goto :goto_0

    .line 485
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    move v0, v1

    .line 489
    goto :goto_0
.end method

.method private b(Lu/aly/bd;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 493
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lu/aly/bd;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 503
    :goto_0
    return-object v0

    .line 497
    :cond_1
    invoke-virtual {p1}, Lu/aly/bd;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    .line 499
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 500
    goto :goto_0

    .line 503
    :cond_3
    invoke-virtual {v0}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lu/aly/x$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return p1

    .line 355
    :cond_1
    iget v0, p0, Lu/aly/x$a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, p0, Lu/aly/x$a;->a:I

    if-ltz v0, :cond_0

    .line 359
    iget p1, p0, Lu/aly/x$a;->a:I

    goto :goto_0
.end method

.method public a(J)J
    .locals 5

    .prologue
    .line 462
    iget v0, p0, Lu/aly/x$a;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-wide p1

    .line 466
    :cond_1
    iget v0, p0, Lu/aly/x$a;->j:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    .line 470
    const-wide/32 v0, 0x36ee80

    iget v2, p0, Lu/aly/x$a;->j:I

    int-to-long v2, v2

    mul-long p1, v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lu/aly/x$a;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    iget-object p1, p0, Lu/aly/x$a;->m:Ljava/lang/String;

    .line 315
    :cond_0
    return-object p1
.end method

.method public a(Lu/aly/bd;)V
    .locals 1

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v0, "defcon"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->a(Lu/aly/bd;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/x$a;->a:I

    .line 291
    const-string v0, "latent"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->a(Lu/aly/bd;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/x$a;->b:I

    .line 292
    const-string v0, "codex"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->a(Lu/aly/bd;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/x$a;->c:I

    .line 293
    const-string v0, "report_policy"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->a(Lu/aly/bd;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/x$a;->d:I

    .line 294
    const-string v0, "report_interval"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->a(Lu/aly/bd;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/x$a;->e:I

    .line 295
    const-string v0, "client_test"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->b(Lu/aly/bd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/x$a;->f:Ljava/lang/String;

    .line 296
    const-string v0, "test_report_interval"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->a(Lu/aly/bd;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/x$a;->g:I

    .line 297
    const-string v0, "umid"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->b(Lu/aly/bd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/x$a;->h:Ljava/lang/String;

    .line 298
    const-string v0, "integrated_test"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->a(Lu/aly/bd;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/x$a;->i:I

    .line 299
    const-string v0, "latent_hours"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->a(Lu/aly/bd;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/x$a;->j:I

    .line 300
    const-string v0, "country"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->b(Lu/aly/bd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/x$a;->k:Ljava/lang/String;

    .line 301
    const-string v0, "domain_p"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->b(Lu/aly/bd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/x$a;->l:Ljava/lang/String;

    .line 302
    const-string v0, "domain_s"

    invoke-direct {p0, p1, v0}, Lu/aly/x$a;->b(Lu/aly/bd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/x$a;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 444
    iget v0, p0, Lu/aly/x$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)[I
    .locals 6

    .prologue
    const/16 v5, 0x5a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 404
    iget v0, p0, Lu/aly/x$a;->d:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lu/aly/x$a;->d:I

    invoke-static {v0}, Lcom/umeng/analytics/ReportPolicy;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    :cond_0
    new-array v0, v4, [I

    aput p1, v0, v2

    aput p2, v0, v3

    .line 412
    :goto_0
    return-object v0

    .line 408
    :cond_1
    iget v0, p0, Lu/aly/x$a;->e:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lu/aly/x$a;->e:I

    if-lt v0, v5, :cond_2

    iget v0, p0, Lu/aly/x$a;->e:I

    const v1, 0x15180

    if-le v0, v1, :cond_3

    .line 409
    :cond_2
    iput v5, p0, Lu/aly/x$a;->e:I

    .line 412
    :cond_3
    new-array v0, v4, [I

    iget v1, p0, Lu/aly/x$a;->d:I

    aput v1, v0, v2

    iget v1, p0, Lu/aly/x$a;->e:I

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v0, v3

    goto :goto_0
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lu/aly/x$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return p1

    .line 374
    :cond_1
    iget v0, p0, Lu/aly/x$a;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lu/aly/x$a;->b:I

    const/16 v1, 0x708

    if-gt v0, v1, :cond_0

    .line 378
    iget v0, p0, Lu/aly/x$a;->b:I

    mul-int/lit16 p1, v0, 0x3e8

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lu/aly/x$a;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 326
    iget-object p1, p0, Lu/aly/x$a;->l:Ljava/lang/String;

    .line 328
    :cond_0
    return-object p1
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 452
    iget v1, p0, Lu/aly/x$a;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 388
    iget v0, p0, Lu/aly/x$a;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lu/aly/x$a;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lu/aly/x$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 389
    :cond_0
    iget p1, p0, Lu/aly/x$a;->c:I

    .line 392
    :cond_1
    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lu/aly/x$a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 339
    iget-object p1, p0, Lu/aly/x$a;->k:Ljava/lang/String;

    .line 341
    :cond_0
    return-object p1
.end method

.method public d(I)I
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lu/aly/x$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lu/aly/x$a;->g:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_0

    iget v0, p0, Lu/aly/x$a;->g:I

    const v1, 0x15180

    if-le v0, v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lu/aly/x$a;->g:I

    mul-int/lit16 p1, v0, 0x3e8

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lu/aly/x$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/x$a;->f:Ljava/lang/String;

    invoke-static {v0}, Lu/aly/aw;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lu/aly/x$a;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lu/aly/x$a;->h:Ljava/lang/String;

    return-object v0
.end method
