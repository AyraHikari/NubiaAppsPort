.class public Lu/aly/av$j;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lu/aly/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field private static final g:J = -0xebe8bb6b9522a8eL


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/av$j;->a:I

    .line 245
    iput-object v1, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    .line 247
    iput-object v1, p0, Lu/aly/av$j;->c:Ljava/lang/String;

    .line 248
    iput-wide v2, p0, Lu/aly/av$j;->d:J

    .line 249
    iput-wide v2, p0, Lu/aly/av$j;->e:J

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/av$j;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lu/aly/av;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Lu/aly/ar;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    .line 260
    :cond_0
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 262
    :try_start_0
    iget v0, p0, Lu/aly/av$j;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 263
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 264
    if-lez v3, :cond_5

    move v2, v1

    .line 265
    :goto_0
    if-ge v2, v3, :cond_3

    .line 266
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$h;

    .line 267
    iget-object v4, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    iget-object v5, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    iget-object v2, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v2, v2, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 269
    iget-object v2, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v2, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v2, v2, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    :goto_1
    return-void

    .line 265
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 274
    :cond_3
    new-instance v0, Lu/aly/av$h;

    invoke-direct {v0}, Lu/aly/av$h;-><init>()V

    .line 275
    iget-object v2, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    iput-object v2, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    .line 276
    iget-object v2, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v2, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v2, v2, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 278
    iget-object v2, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v2, v2, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :cond_4
    :goto_2
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 294
    :try_start_1
    iget v0, p0, Lu/aly/av$j;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 295
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 296
    if-lez v2, :cond_8

    .line 297
    :goto_3
    if-ge v1, v2, :cond_7

    .line 298
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$h;

    .line 299
    iget-object v3, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    iget-object v4, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 300
    iget-object v1, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v1, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 301
    iget-object v1, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v1, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 281
    :cond_5
    :try_start_2
    new-instance v0, Lu/aly/av$h;

    invoke-direct {v0}, Lu/aly/av$h;-><init>()V

    .line 282
    iget-object v2, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    iput-object v2, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    .line 283
    iget-object v2, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v2, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v2, v2, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 287
    :catch_1
    move-exception v0

    .line 288
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 297
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 306
    :cond_7
    :try_start_3
    new-instance v0, Lu/aly/av$h;

    invoke-direct {v0}, Lu/aly/av$h;-><init>()V

    .line 307
    iget-object v1, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    iput-object v1, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    .line 308
    iget-object v1, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v1, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 311
    :cond_8
    new-instance v0, Lu/aly/av$h;

    invoke-direct {v0}, Lu/aly/av$h;-><init>()V

    .line 312
    iget-object v1, p0, Lu/aly/av$j;->b:Ljava/lang/String;

    iput-object v1, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    .line 313
    iget-object v1, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v1, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method
