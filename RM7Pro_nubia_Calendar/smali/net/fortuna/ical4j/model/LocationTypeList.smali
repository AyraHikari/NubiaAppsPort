.class public Lnet/fortuna/ical4j/model/LocationTypeList;
.super Ljava/lang/Object;
.source "LocationTypeList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7f6c13d5688618d8L


# instance fields
.field private locationTypes:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, "t":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Z
    .locals 1
    .param p1, "locationType"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "locationType"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v0, "b":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lnet/fortuna/ical4j/model/LocationTypeList;->locationTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
