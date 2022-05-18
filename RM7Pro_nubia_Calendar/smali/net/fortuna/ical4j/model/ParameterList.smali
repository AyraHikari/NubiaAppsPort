.class public Lnet/fortuna/ical4j/model/ParameterList;
.super Ljava/lang/Object;
.source "ParameterList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1a8c8dc792331e79L


# instance fields
.field private final parameters:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>(Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Z)V
    .locals 4
    .param p1, "list"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "unmodifiable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 90
    .local v2, "parameterList":Ljava/util/List;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Parameter;

    .line 92
    .local v1, "parameter":Lnet/fortuna/ical4j/model/Parameter;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Parameter;->copy()Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v1    # "parameter":Lnet/fortuna/ical4j/model/Parameter;
    :cond_0
    if-eqz p2, :cond_1

    .line 95
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    .line 100
    :goto_1
    return-void

    .line 98
    :cond_1
    iput-object v2, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    goto :goto_1
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "unmodifiable"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final add(Lnet/fortuna/ical4j/model/Parameter;)Z
    .locals 2
    .param p1, "parameter"    # Lnet/fortuna/ical4j/model/Parameter;

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add null Parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 219
    instance-of v1, p1, Lnet/fortuna/ical4j/model/ParameterList;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 220
    check-cast v0, Lnet/fortuna/ical4j/model/ParameterList;

    .line 221
    .local v0, "p":Lnet/fortuna/ical4j/model/ParameterList;
    iget-object v1, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    iget-object v2, v0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-static {v1, v2}, Lorg/apache/commons/lang/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 223
    .end local v0    # "p":Lnet/fortuna/ical4j/model/ParameterList;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 3
    .param p1, "aName"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v2, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Parameter;

    .line 122
    .local v1, "p":Lnet/fortuna/ical4j/model/Parameter;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    .end local v1    # "p":Lnet/fortuna/ical4j/model/Parameter;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v1, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    .line 136
    .local v1, "list":Lnet/fortuna/ical4j/model/ParameterList;
    iget-object v3, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Parameter;

    .line 138
    .local v2, "p":Lnet/fortuna/ical4j/model/Parameter;
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    goto :goto_0

    .line 142
    .end local v2    # "p":Lnet/fortuna/ical4j/model/Parameter;
    :cond_1
    return-object v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Lnet/fortuna/ical4j/model/Parameter;)Z
    .locals 1
    .param p1, "parameter"    # Lnet/fortuna/ical4j/model/Parameter;

    .prologue
    .line 195
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final removeAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    .line 204
    .local v0, "params":Lnet/fortuna/ical4j/model/ParameterList;
    iget-object v1, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    iget-object v2, v0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 205
    return-void
.end method

.method public final replace(Lnet/fortuna/ical4j/model/Parameter;)Z
    .locals 2
    .param p1, "parameter"    # Lnet/fortuna/ical4j/model/Parameter;

    .prologue
    .line 166
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Parameter;

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->remove(Lnet/fortuna/ical4j/model/Parameter;)Z

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    move-result v1

    return v1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lnet/fortuna/ical4j/model/ParameterList;->parameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
