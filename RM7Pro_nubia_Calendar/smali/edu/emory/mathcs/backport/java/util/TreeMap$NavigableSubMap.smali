.class abstract Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "NavigableSubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a7e7cbc5dec3d81L


# instance fields
.field transient cacheVersion:I

.field transient cachedSize:I

.field transient descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

.field transient entrySet:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;

.field final fromInclusive:Z

.field final fromKey:Ljava/lang/Object;

.field final fromStart:Z

.field transient navigableKeySet:Ledu/emory/mathcs/backport/java/util/NavigableSet;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

.field final toEnd:Z

.field final toInclusive:Z

.field final toKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V
    .locals 2
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p2, "fromStart"    # Z
    .param p3, "fromKey"    # Ljava/lang/Object;
    .param p4, "fromInclusive"    # Z
    .param p5, "toEnd"    # Z
    .param p6, "toKey"    # Ljava/lang/Object;
    .param p7, "toInclusive"    # Z

    .prologue
    .line 1183
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 1177
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->cachedSize:I

    .line 1184
    if-nez p2, :cond_0

    if-nez p5, :cond_0

    .line 1185
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p3, p6, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromKey > toKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p3, p3, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 1191
    :cond_1
    if-nez p5, :cond_2

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p6, p6, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 1193
    :cond_2
    iput-boolean p2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromStart:Z

    .line 1194
    iput-boolean p5, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toEnd:Z

    .line 1195
    iput-object p3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromKey:Ljava/lang/Object;

    .line 1196
    iput-object p6, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toKey:Ljava/lang/Object;

    .line 1197
    iput-boolean p4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromInclusive:Z

    .line 1198
    iput-boolean p7, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toInclusive:Z

    .line 1199
    return-void
.end method

.method private absTooHigh(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1224
    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v2, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return v1

    .line 1225
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toKey:Ljava/lang/Object;

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1226
    .local v0, "c":I
    if-gtz v0, :cond_2

    if-nez v0, :cond_0

    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toInclusive:Z

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private absTooLow(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1230
    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v2, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return v1

    .line 1231
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromKey:Ljava/lang/Object;

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1232
    .local v0, "c":I
    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromInclusive:Z

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static access$2100(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1169
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->getMatchingSubEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$2200(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)Ledu/emory/mathcs/backport/java/util/TreeMap;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    .prologue
    .line 1169
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    return-object v0
.end method

.method private getMatchingSubEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1430
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v0, p1

    .line 1431
    check-cast v0, Ljava/util/Map$Entry;

    .line 1432
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1433
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1434
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v4, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1400(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    .line 1435
    .local v1, "found":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v1    # "found":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_1
    move-object v3, v1

    goto :goto_0

    .restart local v1    # "found":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_2
    move-object v1, v3

    goto :goto_1
.end method

.method private recalculateSize()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1376
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absHighest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    .line 1377
    .local v3, "terminator":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-eqz v3, :cond_0

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v2

    .line 1379
    .local v2, "terminalKey":Ljava/lang/Object;
    :goto_0
    const/4 v1, 0x0

    .line 1380
    .local v1, "size":I
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absLowest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_1
    if-eqz v0, :cond_2

    .line 1382
    add-int/lit8 v1, v1, 0x1

    .line 1381
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    move-object v0, v4

    :goto_2
    goto :goto_1

    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .end local v1    # "size":I
    .end local v2    # "terminalKey":Ljava/lang/Object;
    :cond_0
    move-object v2, v4

    .line 1377
    goto :goto_0

    .line 1381
    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .restart local v1    # "size":I
    .restart local v2    # "terminalKey":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$800(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_2

    .line 1384
    :cond_2
    return v1
.end method


# virtual methods
.method final absCeiling(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1264
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absTooLow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absLowest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1700(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->checkHiRange(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method final absFloor(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absTooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absHighest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1900(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->checkLoRange(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method final absHigher(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1268
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absTooLow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absLowest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1800(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->checkHiRange(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method final absHighest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 2

    .prologue
    .line 1251
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1300(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->checkLoRange(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toInclusive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1900(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$2000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method final absLower(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1256
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absTooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absHighest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$2000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->checkLoRange(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method final absLowest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 2

    .prologue
    .line 1246
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1100(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->checkHiRange(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromInclusive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1700(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1800(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract ceiling(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1332
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->ceiling(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1333
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1337
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->ceiling(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1338
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method final checkHiRange(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 1206
    if-eqz p1, :cond_0

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absTooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .end local p1    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_1
    return-object p1
.end method

.method final checkLoRange(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 1202
    if-eqz p1, :cond_0

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absTooLow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .end local p1    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_1
    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1392
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public descendingKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->entrySet:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;

    if-nez v0, :cond_0

    .line 1413
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->entrySet:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;

    .line 1415
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->entrySet:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;

    return-object v0
.end method

.method protected abstract first()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 1274
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->first()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1275
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1279
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->first()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1280
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1281
    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected abstract floor(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1322
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->floor(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1323
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1327
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->floor(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1328
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1396
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 1360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract higher(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1342
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->higher(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1343
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1347
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->higher(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1348
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method final inRange(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1210
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absTooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absTooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final inRange(Ljava/lang/Object;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 1219
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->inRangeExclusive(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method final inRangeExclusive(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1214
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->fromKey:Ljava/lang/Object;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->toKey:Ljava/lang/Object;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1388
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->absLowest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1419
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected abstract last()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 1285
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->last()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1286
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1290
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->last()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1291
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1292
    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected abstract lower(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1312
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->lower(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1313
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1317
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->lower(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1318
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->navigableKeySet:Ledu/emory/mathcs/backport/java/util/NavigableSet;

    if-nez v0, :cond_0

    .line 1424
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->navigableKeySet:Ledu/emory/mathcs/backport/java/util/NavigableSet;

    .line 1426
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->navigableKeySet:Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 1296
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->first()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1297
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1300
    :goto_0
    return-object v1

    .line 1298
    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 1299
    .local v1, "result":Ljava/util/Map$Entry;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto :goto_0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 1304
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->last()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1305
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1308
    :goto_0
    return-object v1

    .line 1306
    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 1307
    .local v1, "result":Ljava/util/Map$Entry;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1401
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1407
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1368
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->cachedSize:I

    if-ltz v0, :cond_0

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->cacheVersion:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$700(Ledu/emory/mathcs/backport/java/util/TreeMap;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1369
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->recalculateSize()I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->cachedSize:I

    .line 1370
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$700(Ledu/emory/mathcs/backport/java/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->cacheVersion:I

    .line 1372
    :cond_1
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->cachedSize:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 1356
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    .prologue
    .line 1364
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract uncheckedHigher(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
.end method
