.class public Lnet/fortuna/ical4j/model/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x12121a3e534e1c1L


# instance fields
.field private addresses:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, "t":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :try_start_0
    iget-object v2, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    new-instance v3, Ljava/net/URI;

    .line 77
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v4}, Lnet/fortuna/ical4j/util/Uris;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    .local v1, "use":Ljava/net/URISyntaxException;
    const-string v2, "ical4j.parsing.relaxed"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    throw v1

    .line 88
    .end local v1    # "use":Ljava/net/URISyntaxException;
    :cond_1
    return-void
.end method


# virtual methods
.method public final add(Ljava/net/URI;)Z
    .locals 1
    .param p1, "address"    # Ljava/net/URI;

    .prologue
    .line 111
    iget-object v0, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/net/URI;)Z
    .locals 1
    .param p1, "address"    # Ljava/net/URI;

    .prologue
    .line 137
    iget-object v0, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v0, "b":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lnet/fortuna/ical4j/model/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/fortuna/ical4j/util/Strings;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
