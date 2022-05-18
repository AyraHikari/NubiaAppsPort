.class public Lnet/fortuna/ical4j/model/ComponentList;
.super Ljava/util/ArrayList;
.source "ComponentList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x656d366bb76a1959L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 3
    .param p1, "components"    # Lnet/fortuna/ical4j/model/ComponentList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 77
    .local v0, "c":Lnet/fortuna/ical4j/model/Component;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->copy()Lnet/fortuna/ical4j/model/Component;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_0

    .line 79
    .end local v0    # "c":Lnet/fortuna/ical4j/model/Component;
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "component"    # Ljava/lang/Object;

    .prologue
    .line 141
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Component;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/Component;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final add(Lnet/fortuna/ical4j/model/Component;)Z
    .locals 1
    .param p1, "component"    # Lnet/fortuna/ical4j/model/Component;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;
    .locals 3
    .param p1, "aName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 100
    .local v0, "c":Lnet/fortuna/ical4j/model/Component;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    .end local v0    # "c":Lnet/fortuna/ical4j/model/Component;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    .line 114
    .local v1, "components":Lnet/fortuna/ical4j/model/ComponentList;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 116
    .local v0, "c":Lnet/fortuna/ical4j/model/Component;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_0

    .line 120
    .end local v0    # "c":Lnet/fortuna/ical4j/model/Component;
    :cond_1
    return-object v1
.end method

.method public final remove(Lnet/fortuna/ical4j/model/Component;)Z
    .locals 1
    .param p1, "component"    # Lnet/fortuna/ical4j/model/Component;

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/ComponentList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
