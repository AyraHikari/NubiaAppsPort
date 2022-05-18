.class public Lnet/fortuna/ical4j/model/PropertyList;
.super Ljava/util/ArrayList;
.source "PropertyList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7b2d9da38348a1c7L


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

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 3
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;
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

    .line 74
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 76
    .local v1, "p":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->copy()Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 78
    .end local v1    # "p":Lnet/fortuna/ical4j/model/Property;
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "property"    # Ljava/lang/Object;

    .prologue
    .line 140
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Property;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/Property;

    .line 142
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final add(Lnet/fortuna/ical4j/model/Property;)Z
    .locals 1
    .param p1, "property"    # Lnet/fortuna/ical4j/model/Property;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v1, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    .line 113
    .local v1, "list":Lnet/fortuna/ical4j/model/PropertyList;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Property;

    .line 115
    .local v2, "p":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 119
    .end local v2    # "p":Lnet/fortuna/ical4j/model/Property;
    :cond_1
    return-object v1
.end method

.method public final getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 3
    .param p1, "aName"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 99
    .local v1, "p":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    .end local v1    # "p":Lnet/fortuna/ical4j/model/Property;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final remove(Lnet/fortuna/ical4j/model/Property;)Z
    .locals 1
    .param p1, "property"    # Lnet/fortuna/ical4j/model/Property;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
