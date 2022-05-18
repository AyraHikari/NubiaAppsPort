.class public Lcn/nubia/music/app/cache/MusicLruCache;
.super Ljava/lang/Object;
.source "MusicLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-gtz p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput p1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->maxSize:I

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    .line 25
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/app/cache/MusicLruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 142
    if-gez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/app/cache/MusicLruCache;->trimToSize(I)V

    .line 154
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    iget v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->hitCount:I

    .line 36
    monitor-exit p0

    .line 62
    :goto_0
    return-object v0

    .line 38
    :cond_1
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->missCount:I

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0, p1}, Lcn/nubia/music/app/cache/MusicLruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 45
    :cond_2
    monitor-enter p0

    .line 46
    :try_start_2
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->createCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->createCount:I

    .line 47
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    iget-object v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    if-eqz v0, :cond_4

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Lcn/nubia/music/app/cache/MusicLruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_3
    :try_start_3
    iget v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    invoke-direct {p0, p1, v1}, Lcn/nubia/music/app/cache/MusicLruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    goto :goto_1

    .line 55
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 61
    :cond_4
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->maxSize:I

    invoke-virtual {p0, v0}, Lcn/nubia/music/app/cache/MusicLruCache;->trimToSize(I)V

    move-object v0, v1

    .line 62
    goto :goto_0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    monitor-enter p0

    .line 71
    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->putCount:I

    .line 72
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    invoke-direct {p0, p1, p2}, Lcn/nubia/music/app/cache/MusicLruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    .line 73
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    iget v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/app/cache/MusicLruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    .line 77
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcn/nubia/music/app/cache/MusicLruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    :cond_3
    iget v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->maxSize:I

    invoke-virtual {p0, v1}, Lcn/nubia/music/app/cache/MusicLruCache;->trimToSize(I)V

    .line 83
    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    iget v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/app/cache/MusicLruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    .line 125
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcn/nubia/music/app/cache/MusicLruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    :cond_2
    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 189
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->hitCount:I

    iget v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->missCount:I

    add-int/2addr v1, v2

    .line 190
    if-eqz v1, :cond_0

    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->hitCount:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 191
    :cond_0
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/music/app/cache/MusicLruCache;->maxSize:I

    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcn/nubia/music/app/cache/MusicLruCache;->hitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcn/nubia/music/app/cache/MusicLruCache;->missCount:I

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 191
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trimToSize(I)V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trimToSize size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxsize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 91
    :goto_0
    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_1
    :try_start_1
    iget v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    iget v1, p0, Lcn/nubia/music/app/cache/MusicLruCache;->maxSize:I

    if-gt v0, v1, :cond_2

    .line 98
    monitor-exit p0

    .line 113
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget-object v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    invoke-direct {p0, v1, v0}, Lcn/nubia/music/app/cache/MusicLruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->size:I

    .line 109
    iget v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->evictionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/music/app/cache/MusicLruCache;->evictionCount:I

    .line 110
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Lcn/nubia/music/app/cache/MusicLruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
