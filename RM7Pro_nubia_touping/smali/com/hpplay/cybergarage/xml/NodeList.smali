.class public Lcom/hpplay/cybergarage/xml/NodeList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized getEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 43
    monitor-enter p0

    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/NodeList;->size()I

    move-result v3

    .line 47
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 48
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/xml/NodeList;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 50
    if-nez v4, :cond_3

    .line 47
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNode(I)Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/xml/NodeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public declared-synchronized getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 29
    monitor-enter p0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 32
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/NodeList;->size()I

    move-result v3

    .line 33
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 34
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/xml/NodeList;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    .line 37
    goto :goto_0

    .line 33
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
