.class public Lcn/nubia/camera/r/d;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/d$a;,
        Lcn/nubia/camera/r/d$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/d$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/d$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/d$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/d$a;",
            ">;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/d$b;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field h:Z

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Z

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/c;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

.field m:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcn/nubia/algorithm/camera/FreezeVideoJni;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/d;->a:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/d;->c:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/d;->d:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/d;->e:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/d;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcn/nubia/camera/r/d;->g:Z

    .line 34
    iput-boolean v0, p0, Lcn/nubia/camera/r/d;->h:Z

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/r/d;->i:Ljava/util/ArrayList;

    .line 42
    iput-boolean v0, p0, Lcn/nubia/camera/r/d;->j:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/d;->k:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/r/d;->m:Ljava/lang/Boolean;

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    return-void
.end method

.method private a(Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/d$a;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractForeground start frameIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtractThread"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    new-array v2, v0, [Lcn/nubia/algorithm/utils/a;

    new-array v3, v0, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    .line 176
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/d$a;

    .line 177
    iget-object v7, v6, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    iget v8, v6, Lcn/nubia/camera/r/d$a;->b:I

    iget v9, v6, Lcn/nubia/camera/r/d$a;->c:I

    invoke-static {v7, v8, v9}, Lcn/nubia/algorithm/utils/RGBAlgorithm;->a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;

    move-result-object v7

    aput-object v7, v2, v5

    .line 178
    iget v6, v6, Lcn/nubia/camera/r/d$a;->d:I

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 181
    iget-object v7, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/camera/r/d$a;

    iget v8, v8, Lcn/nubia/camera/r/d$a;->b:I

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/camera/r/d$a;

    iget v9, v9, Lcn/nubia/camera/r/d$a;->c:I

    invoke-virtual {v7, v2, v3, v8, v9}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->c([Lcn/nubia/algorithm/utils/a;[III)[B

    move-result-object v3

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractForeground end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u62a0\u7b2c"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\u56fe\u8017\u65f6\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ms\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/r/a;->b(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 185
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/r/d$a;

    iget-object v1, v1, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v1

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/camera/r/d$a;

    iget v5, v5, Lcn/nubia/camera/r/d$a;->b:I

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/d$a;

    iget v6, v6, Lcn/nubia/camera/r/d$a;->c:I

    invoke-direct {p0, v3, v1, v5, v6}, Lcn/nubia/camera/r/d;->a([B[BII)[I

    move-result-object v1

    .line 186
    iget-object v3, p0, Lcn/nubia/camera/r/d;->f:Ljava/util/HashMap;

    new-instance v5, Lcn/nubia/camera/r/d$b;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/d$a;

    iget v6, v6, Lcn/nubia/camera/r/d$a;->b:I

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/camera/r/d$a;

    iget v7, v7, Lcn/nubia/camera/r/d$a;->c:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v5, v1, v6, v7, v8}, Lcn/nubia/camera/r/d$b;-><init>([IIII)V

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v4

    :goto_1
    if-ge p1, v0, :cond_1

    .line 187
    aget-object v1, v2, p1

    .line 188
    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 190
    :cond_1
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 191
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/r/d$a;

    iget-object p1, p1, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->a()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/d$b;",
            ">;)V"
        }
    .end annotation

    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcn/nubia/camera/r/c;

    .line 409
    iget-object v2, p0, Lcn/nubia/camera/r/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 410
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 411
    aget-object v3, v1, v2

    .line 412
    invoke-interface {v3, p1}, Lcn/nubia/camera/r/c;->a(Ljava/util/HashMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 410
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a([B[BII)[I
    .locals 9

    mul-int v0, p3, p4

    .line 332
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p4, :cond_2

    move v5, v1

    :goto_1
    if-ge v5, p3, :cond_1

    .line 337
    aget-byte v6, p1, v3

    if-nez v6, :cond_0

    .line 338
    aput v1, v0, v3

    goto :goto_2

    .line 341
    :cond_0
    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v0, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private b(Z)V
    .locals 4

    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcn/nubia/camera/r/c;

    .line 398
    iget-object v2, p0, Lcn/nubia/camera/r/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 399
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 400
    aget-object v3, v1, v2

    .line 401
    invoke-interface {v3, p1}, Lcn/nubia/camera/r/c;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 399
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b()Z
    .locals 5

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/r/d;->m:Ljava/lang/Boolean;

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/r/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_1

    return v2

    .line 163
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->j:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/r/d;->e:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/r/d;->d:Ljava/util/HashMap;

    iget-object v4, p0, Lcn/nubia/camera/r/d;->e:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private c()Z
    .locals 10

    .line 197
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 200
    :cond_0
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_4

    .line 202
    invoke-virtual {p0, v3}, Lcn/nubia/camera/r/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 205
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ExtractThread"

    const-string v4, "buildBackgroundModel start"

    .line 207
    invoke-static {v0, v4}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [Lcn/nubia/algorithm/utils/a;

    new-array v4, v3, [I

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_2

    .line 211
    iget-object v6, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/d$a;

    .line 212
    iget-object v7, v6, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    iget v8, v6, Lcn/nubia/camera/r/d$a;->b:I

    iget v9, v6, Lcn/nubia/camera/r/d$a;->c:I

    invoke-static {v7, v8, v9}, Lcn/nubia/algorithm/utils/RGBAlgorithm;->a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;

    move-result-object v7

    aput-object v7, v0, v5

    .line 213
    iget-object v7, v6, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    invoke-virtual {v7}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 214
    iget v6, v6, Lcn/nubia/camera/r/d$a;->d:I

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 217
    iget-object v7, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    iget-object v8, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/camera/r/d$a;

    iget v8, v8, Lcn/nubia/camera/r/d$a;->b:I

    iget-object v9, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/camera/r/d$a;

    iget v9, v9, Lcn/nubia/camera/r/d$a;->c:I

    invoke-virtual {v7, v0, v4, v8, v9}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a([Lcn/nubia/algorithm/utils/a;[III)Z

    .line 218
    iget-object v4, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v2, v3, :cond_3

    .line 219
    aget-object v4, v0, v2

    .line 220
    invoke-virtual {v4}, Lcn/nubia/algorithm/utils/a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 222
    :cond_3
    iput-boolean v1, p0, Lcn/nubia/camera/r/d;->j:Z

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    const-string v0, "ExtractThread"

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildBackgroundModel end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u80cc\u666f\u5efa\u6a21\u8017\u65f6\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/r/a;->b(Ljava/lang/String;)V

    return v1

    .line 203
    :cond_4
    :goto_2
    :try_start_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    .line 205
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Z
    .locals 10

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/r/d;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ExtractThread"

    const-string v1, "preBuildModel start"

    .line 235
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    new-array v2, v1, [Lcn/nubia/algorithm/utils/a;

    new-array v3, v1, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 239
    iget-object v6, p0, Lcn/nubia/camera/r/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/d$a;

    .line 240
    iget-object v7, v6, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    iget v8, v6, Lcn/nubia/camera/r/d$a;->b:I

    iget v9, v6, Lcn/nubia/camera/r/d$a;->c:I

    invoke-static {v7, v8, v9}, Lcn/nubia/algorithm/utils/RGBAlgorithm;->a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;

    move-result-object v7

    aput-object v7, v2, v5

    .line 241
    iget v6, v6, Lcn/nubia/camera/r/d$a;->d:I

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 244
    iget-object v7, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    iget-object v8, p0, Lcn/nubia/camera/r/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/camera/r/d$a;

    iget v8, v8, Lcn/nubia/camera/r/d$a;->b:I

    iget-object v9, p0, Lcn/nubia/camera/r/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/camera/r/d$a;

    iget v9, v9, Lcn/nubia/camera/r/d$a;->c:I

    invoke-virtual {v7, v2, v3, v8, v9}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->b([Lcn/nubia/algorithm/utils/a;[III)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/camera/r/d;->m:Ljava/lang/Boolean;

    :goto_1
    if-ge v4, v1, :cond_2

    .line 245
    aget-object v3, v2, v4

    .line 246
    invoke-virtual {v3}, Lcn/nubia/algorithm/utils/a;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 248
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preBuildModel end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9884\u5efa\u6a21\u8017\u65f6\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/r/a;->b(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/r/d;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 5

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/d;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ExtractThread"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit body frameIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "ExtractThread"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractBody frameIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-object v1, p0, Lcn/nubia/camera/r/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/r/d$a;

    add-int/lit8 v3, p1, -0xa

    .line 301
    iget v4, v2, Lcn/nubia/camera/r/d$a;->d:I

    if-ge v3, v4, :cond_1

    iget v3, v2, Lcn/nubia/camera/r/d$a;->d:I

    if-gt v3, p1, :cond_1

    .line 302
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/r/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 306
    iget-object v1, p0, Lcn/nubia/camera/r/d;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v1, p0, Lcn/nubia/camera/r/d;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcn/nubia/camera/r/c;)V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcn/nubia/camera/r/d$a;)V
    .locals 8

    monitor-enter p0

    .line 268
    :try_start_0
    iget v0, p1, Lcn/nubia/camera/r/d$a;->d:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget v0, p1, Lcn/nubia/camera/r/d$a;->d:I

    if-ge v0, v3, :cond_3

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/r/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v4

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v3

    iget v7, p1, Lcn/nubia/camera/r/d$a;->d:I

    if-ge v6, v7, :cond_1

    iget v6, p1, Lcn/nubia/camera/r/d$a;->d:I

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 278
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 284
    iget-object v0, p0, Lcn/nubia/camera/r/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object p1, p0, Lcn/nubia/camera/r/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_4

    .line 286
    iget-object p1, p0, Lcn/nubia/camera/r/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/r/d$a;

    iget-object p1, p1, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 290
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcn/nubia/camera/r/n$b;)V
    .locals 1

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/d;->i:Ljava/util/ArrayList;

    iget p1, p1, Lcn/nubia/camera/r/n$b;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 57
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/r/d;->g:Z

    .line 58
    iput-boolean p1, p0, Lcn/nubia/camera/r/d;->h:Z

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 387
    iget-object v2, p0, Lcn/nubia/camera/r/d;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 4

    const-string v0, "ExtractThread"

    const-string v1, "start"

    .line 64
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/r/d;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->h:Z

    if-nez v0, :cond_d

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/r/d;->m:Ljava/lang/Boolean;

    const/16 v2, 0xa

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 70
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 72
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 77
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 79
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    invoke-direct {p0}, Lcn/nubia/camera/r/d;->d()Z

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/r/d;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/r/d;->b(Z)V

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/r/d;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    .line 79
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 87
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->j:Z

    if-nez v0, :cond_7

    .line 88
    monitor-enter p0

    .line 89
    :try_start_4
    iget-object v0, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_5

    .line 90
    invoke-virtual {p0, v3}, Lcn/nubia/camera/r/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 100
    :cond_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    invoke-direct {p0}, Lcn/nubia/camera/r/d;->c()Z

    goto :goto_4

    .line 91
    :cond_5
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->g:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_6

    .line 93
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 95
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 98
    :cond_6
    :goto_3
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 100
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 107
    :cond_7
    :goto_4
    monitor-enter p0

    .line 108
    :try_start_8
    iget-object v0, p0, Lcn/nubia/camera/r/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/r/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 110
    iget-object v1, p0, Lcn/nubia/camera/r/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v2, :cond_9

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/camera/r/d;->b(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcn/nubia/camera/r/d;->l:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-virtual {v2}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 124
    :cond_8
    iget-object v2, p0, Lcn/nubia/camera/r/d;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v2, p0, Lcn/nubia/camera/r/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 140
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/r/d;->a(Ljava/lang/Integer;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 114
    :cond_9
    :goto_5
    :try_start_9
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->g:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v0, :cond_a

    .line 116
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 118
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 121
    :cond_a
    :goto_6
    monitor-exit p0

    goto/16 :goto_0

    .line 130
    :cond_b
    iget-boolean v0, p0, Lcn/nubia/camera/r/d;->g:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v0, :cond_c

    .line 132
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_7

    :catch_3
    move-exception v0

    .line 134
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 137
    :cond_c
    :goto_7
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 139
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    .line 143
    :cond_d
    :goto_8
    iget-object v0, p0, Lcn/nubia/camera/r/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/r/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/r/d$a;

    iget-object v0, v0, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    goto :goto_8

    .line 146
    :cond_e
    :goto_9
    iget-object v0, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/r/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/r/d$a;

    iget-object v0, v0, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    goto :goto_9

    .line 150
    :cond_f
    iget-object v0, p0, Lcn/nubia/camera/r/d;->f:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcn/nubia/camera/r/d;->a(Ljava/util/HashMap;)V

    const-string v0, "ExtractThread"

    const-string v1, "end"

    .line 152
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
