.class public Lcom/dd/plist/NSSet;
.super Lcom/dd/plist/NSObject;
.source "SourceFile"


# instance fields
.field private ordered:Z

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dd/plist/NSSet;->ordered:Z

    .line 49
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    .line 50
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dd/plist/NSSet;->ordered:Z

    .line 60
    iput-boolean p1, p0, Lcom/dd/plist/NSSet;->ordered:Z

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    goto :goto_0
.end method

.method public varargs constructor <init>(Z[Lcom/dd/plist/NSObject;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dd/plist/NSSet;->ordered:Z

    .line 87
    iput-boolean p1, p0, Lcom/dd/plist/NSSet;->ordered:Z

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    goto :goto_0
.end method

.method public varargs constructor <init>([Lcom/dd/plist/NSObject;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dd/plist/NSSet;->ordered:Z

    .line 74
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    .line 75
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized addObject(Lcom/dd/plist/NSObject;)V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized allObjects()[Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->count()I

    move-result v1

    new-array v1, v1, [Lcom/dd/plist/NSObject;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dd/plist/NSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized anyObject()Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    .line 271
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 272
    invoke-virtual {v0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->clone()Lcom/dd/plist/NSSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/dd/plist/NSSet;
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Lcom/dd/plist/NSObject;

    .line 239
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 241
    add-int/lit8 v2, v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dd/plist/NSObject;->clone()Lcom/dd/plist/NSObject;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v1

    move v1, v2

    .line 242
    goto :goto_0

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 244
    :cond_1
    new-instance v0, Lcom/dd/plist/NSSet;

    iget-boolean v1, p0, Lcom/dd/plist/NSSet;->ordered:Z

    invoke-direct {v0, v1, v3}, Lcom/dd/plist/NSSet;-><init>(Z[Lcom/dd/plist/NSObject;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->clone()Lcom/dd/plist/NSSet;

    move-result-object v0

    return-object v0
.end method

.method public containsObject(Lcom/dd/plist/NSObject;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized count()I
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 222
    check-cast p1, Lcom/dd/plist/NSSet;

    .line 223
    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    iget-object v2, p1, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    iget-object v2, p1, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 209
    .line 210
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0xcb

    .line 211
    return v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized intersectsSet(Lcom/dd/plist/NSSet;)Z
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 168
    invoke-virtual {p1, v0}, Lcom/dd/plist/NSSet;->containsObject(Lcom/dd/plist/NSObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSubsetOfSet(Lcom/dd/plist/NSSet;)Z
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 182
    invoke-virtual {p1, v0}, Lcom/dd/plist/NSSet;->containsObject(Lcom/dd/plist/NSObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized member(Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;
    .locals 3

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized objectIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeObject(Lcom/dd/plist/NSObject;)V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSSet;->indent(Ljava/lang/StringBuilder;I)V

    .line 299
    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->allObjects()[Lcom/dd/plist/NSObject;

    move-result-object v3

    .line 300
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    sget-object v0, Lcom/dd/plist/NSSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    move v0, v1

    .line 302
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 303
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 304
    const-class v5, Lcom/dd/plist/NSDictionary;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lcom/dd/plist/NSArray;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lcom/dd/plist/NSData;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 306
    sget-object v2, Lcom/dd/plist/NSSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 308
    aget-object v4, v3, v0

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    .line 315
    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_1

    .line 316
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/16 v5, 0x50

    if-le v4, v5, :cond_2

    .line 319
    sget-object v2, Lcom/dd/plist/NSSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 302
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_3
    if-eqz v0, :cond_4

    .line 311
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    :cond_4
    aget-object v4, v3, v0

    invoke-virtual {v4, p1, v1}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 323
    :cond_5
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSSet;->indent(Ljava/lang/StringBuilder;I)V

    .line 337
    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->allObjects()[Lcom/dd/plist/NSObject;

    move-result-object v3

    .line 338
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    sget-object v0, Lcom/dd/plist/NSSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    move v0, v1

    .line 340
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 341
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 342
    const-class v5, Lcom/dd/plist/NSDictionary;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lcom/dd/plist/NSArray;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lcom/dd/plist/NSData;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 343
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 344
    sget-object v2, Lcom/dd/plist/NSSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 346
    aget-object v4, v3, v0

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    .line 353
    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_1

    .line 354
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/16 v5, 0x50

    if-le v4, v5, :cond_2

    .line 357
    sget-object v2, Lcom/dd/plist/NSSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 340
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_3
    if-eqz v0, :cond_4

    .line 349
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :cond_4
    aget-object v4, v3, v0

    invoke-virtual {v4, p1, v1}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 361
    :cond_5
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    return-void
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/dd/plist/NSSet;->ordered:Z

    if-eqz v0, :cond_0

    .line 279
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 284
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    goto :goto_1

    .line 281
    :cond_0
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    goto :goto_0

    .line 286
    :cond_1
    return-void
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSSet;->indent(Ljava/lang/StringBuilder;I)V

    .line 258
    const-string v0, "<array>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 261
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    .line 262
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSSet;->indent(Ljava/lang/StringBuilder;I)V

    .line 265
    const-string v0, "</array>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    return-void
.end method
