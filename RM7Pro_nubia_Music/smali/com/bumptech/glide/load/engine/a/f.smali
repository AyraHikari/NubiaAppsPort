.class public Lcom/bumptech/glide/load/engine/a/f;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/f$1;,
        Lcom/bumptech/glide/load/engine/a/f$b;,
        Lcom/bumptech/glide/load/engine/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/a/g;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Lcom/bumptech/glide/load/engine/a/f$a;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/a/f;->a:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/bumptech/glide/load/engine/a/f;->e()Lcom/bumptech/glide/load/engine/a/g;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/load/engine/a/f;->f()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/load/engine/a/f;-><init>(ILcom/bumptech/glide/load/engine/a/g;Ljava/util/Set;)V

    .line 53
    return-void
.end method

.method constructor <init>(ILcom/bumptech/glide/load/engine/a/g;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bumptech/glide/load/engine/a/g;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/f;->d:I

    .line 40
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/f;->f:I

    .line 41
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    .line 42
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/a/f;->c:Ljava/util/Set;

    .line 43
    new-instance v0, Lcom/bumptech/glide/load/engine/a/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/a/f$b;-><init>(Lcom/bumptech/glide/load/engine/a/f$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/f;->e:Lcom/bumptech/glide/load/engine/a/f$a;

    .line 44
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/f;->f:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/f;->b(I)V

    .line 110
    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 4

    .prologue
    .line 174
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I

    if-le v0, p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/g;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    if-nez v0, :cond_2

    .line 178
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "LruBitmapPool"

    const-string v1, "Size mismatch, resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/f;->d()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    monitor-exit p0

    return-void

    .line 186
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/f;->e:Lcom/bumptech/glide/load/engine/a/f$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/a/f$a;->b(Landroid/graphics/Bitmap;)V

    .line 187
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/a/g;->c(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/f;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/f;->k:I

    .line 190
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/a/g;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/f;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/f;->d()V

    .line 201
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 204
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/a/f;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/a/f;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/a/f;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/a/f;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/a/f;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private static e()Lcom/bumptech/glide/load/engine/a/g;
    .locals 2

    .prologue
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 216
    new-instance v0, Lcom/bumptech/glide/load/engine/a/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/i;-><init>()V

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/engine/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/a;-><init>()V

    goto :goto_0
.end method

.method private static f()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 225
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 227
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/a/f;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "LruBitmapPool"

    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/f;->b(I)V

    .line 158
    return-void
.end method

.method public a(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 163
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/f;->a()V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 169
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/f;->f:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/f;->b(I)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;)Z
    .locals 4

    .prologue
    .line 79
    monitor-enter p0

    if-nez p1, :cond_0

    .line 80
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/g;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/a/f;->f:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/f;->c:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    :cond_1
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/a/g;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/f;->c:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 105
    :goto_0
    monitor-exit p0

    return v0

    .line 92
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/g;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/a/g;->a(Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/f;->e:Lcom/bumptech/glide/load/engine/a/f$a;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/a/f$a;->a(Landroid/graphics/Bitmap;)V

    .line 96
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/f;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/f;->j:I

    .line 97
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I

    .line 99
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put bitmap in pool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/a/g;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/f;->c()V

    .line 104
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/f;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    if-eqz p3, :cond_3

    move-object v0, p3

    :goto_0
    invoke-interface {v1, p1, p2, v0}, Lcom/bumptech/glide/load/engine/a/g;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    if-nez v0, :cond_4

    .line 132
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/a/g;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/f;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/f;->i:I

    .line 144
    :cond_1
    :goto_1
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/a/g;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-object v0

    .line 130
    :cond_3
    :try_start_1
    sget-object v0, Lcom/bumptech/glide/load/engine/a/f;->a:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 137
    :cond_4
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/f;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/f;->h:I

    .line 138
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/f;->b:Lcom/bumptech/glide/load/engine/a/g;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/a/g;->c(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/load/engine/a/f;->g:I

    .line 139
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/f;->e:Lcom/bumptech/glide/load/engine/a/f$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/a/f$a;->b(Landroid/graphics/Bitmap;)V

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
