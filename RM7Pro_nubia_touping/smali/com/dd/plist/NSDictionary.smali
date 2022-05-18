.class public Lcom/dd/plist/NSDictionary;
.super Lcom/dd/plist/NSObject;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dd/plist/NSObject;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/dd/plist/NSObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final dict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    .line 56
    return-void
.end method


# virtual methods
.method public allKeys()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->count()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 3

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    .line 366
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 367
    new-instance v2, Lcom/dd/plist/NSString;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/dd/plist/NSString;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    invoke-virtual {v0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    goto :goto_1

    .line 373
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 159
    return-void
.end method

.method public clone()Lcom/dd/plist/NSDictionary;
    .locals 6

    .prologue
    .line 327
    new-instance v1, Lcom/dd/plist/NSDictionary;

    invoke-direct {v1}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 328
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    iget-object v3, v1, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    invoke-virtual {v0}, Lcom/dd/plist/NSObject;->clone()Lcom/dd/plist/NSObject;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 332
    :cond_1
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->clone()Lcom/dd/plist/NSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->clone()Lcom/dd/plist/NSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(D)Z
    .locals 5

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dd/plist/NSNumber;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    check-cast v0, Lcom/dd/plist/NSNumber;

    .line 237
    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->isReal()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v2, p1

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(J)Z
    .locals 5

    .prologue
    .line 217
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dd/plist/NSNumber;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    check-cast v0, Lcom/dd/plist/NSNumber;

    .line 220
    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->isInteger()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Lcom/dd/plist/NSObject;)Z
    .locals 1

    .prologue
    .line 190
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/dd/plist/NSObject;->fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dd/plist/NSString;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    check-cast v0, Lcom/dd/plist/NSString;

    .line 203
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/util/Date;)Z
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dd/plist/NSDate;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    check-cast v0, Lcom/dd/plist/NSDate;

    .line 271
    invoke-virtual {v0}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Z)Z
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dd/plist/NSNumber;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    check-cast v0, Lcom/dd/plist/NSNumber;

    .line 254
    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue([B)Z
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/dd/plist/NSData;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    check-cast v0, Lcom/dd/plist/NSData;

    .line 288
    invoke-virtual {v0}, Lcom/dd/plist/NSData;->bytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/dd/plist/NSObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dd/plist/NSDictionary;

    iget-object v0, p1, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public getHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 320
    .line 321
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x245

    .line 322
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    if-nez p2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 136
    invoke-static {p2}, Lcom/dd/plist/NSObject;->fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/dd/plist/NSObject;

    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Lcom/dd/plist/NSObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    invoke-virtual {p0, v1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/dd/plist/NSDictionary;->remove(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 421
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    sget-object v0, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->allKeys()[Ljava/lang/String;

    move-result-object v2

    .line 424
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 425
    invoke-virtual {p0, v4}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v5

    .line 426
    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 427
    const/16 v6, 0x22

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-static {v4}, Lcom/dd/plist/NSString;->escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v4, "\" ="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 431
    const-class v6, Lcom/dd/plist/NSDictionary;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-class v6, Lcom/dd/plist/NSArray;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-class v6, Lcom/dd/plist/NSData;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    :cond_0
    sget-object v4, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {v5, p1, v4}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    .line 438
    :goto_1
    const/16 v4, 0x3b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    sget-object v4, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v5, p1, v1}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 441
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 442
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 448
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    sget-object v0, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 451
    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 452
    invoke-virtual {p0, v4}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v5

    .line 453
    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 454
    const/16 v6, 0x22

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v4}, Lcom/dd/plist/NSString;->escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v4, "\" ="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 458
    const-class v6, Lcom/dd/plist/NSDictionary;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-class v6, Lcom/dd/plist/NSArray;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-class v6, Lcom/dd/plist/NSData;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    :cond_0
    sget-object v4, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {v5, p1, v4}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    .line 465
    :goto_1
    const/16 v4, 0x3b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    sget-object v4, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_1
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v5, p1, v2}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 468
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 469
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    return-void
.end method

.method public toASCIIPropertyList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSDictionary;->toASCII(Ljava/lang/StringBuilder;I)V

    .line 398
    sget-object v1, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 4

    .prologue
    .line 377
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    .line 378
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 379
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 380
    new-instance v3, Lcom/dd/plist/NSString;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    goto :goto_1

    .line 385
    :cond_1
    return-void
.end method

.method public toGnuStepASCIIPropertyList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSDictionary;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    .line 414
    sget-object v1, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 5

    .prologue
    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 338
    const-string v0, "<dict>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    invoke-virtual {p0, v0}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v2

    .line 342
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 343
    const-string v3, "<key>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    :cond_0
    const-string v3, "<![CDATA["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v3, "]]>"

    const-string v4, "]]]]><![CDATA[>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :goto_1
    const-string v0, "</key>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {v2, p1, v0}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    .line 356
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 358
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    .line 359
    const-string v0, "</dict>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
