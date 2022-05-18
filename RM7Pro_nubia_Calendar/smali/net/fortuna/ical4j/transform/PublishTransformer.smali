.class public Lnet/fortuna/ical4j/transform/PublishTransformer;
.super Lnet/fortuna/ical4j/transform/Transformer;
.source "PublishTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lnet/fortuna/ical4j/transform/Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 8
    .param p1, "calendar"    # Lnet/fortuna/ical4j/model/Calendar;

    .prologue
    .line 56
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    .line 58
    .local v0, "calProps":Lnet/fortuna/ical4j/model/PropertyList;
    const-string v6, "METHOD"

    invoke-virtual {v0, v6}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v4

    .line 60
    .local v4, "method":Lnet/fortuna/ical4j/model/Property;
    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v0, v4}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Lnet/fortuna/ical4j/model/Property;)Z

    .line 64
    :cond_0
    sget-object v6, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v0, v6}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 68
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Component;

    .line 71
    .local v2, "component":Lnet/fortuna/ical4j/model/Component;
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    .line 73
    .local v1, "compProps":Lnet/fortuna/ical4j/model/PropertyList;
    const-string v6, "SEQUENCE"

    .line 74
    invoke-virtual {v1, v6}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    check-cast v5, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 76
    .local v5, "sequence":Lnet/fortuna/ical4j/model/property/Sequence;
    if-nez v5, :cond_1

    .line 77
    new-instance v6, Lnet/fortuna/ical4j/model/property/Sequence;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lnet/fortuna/ical4j/model/property/Sequence;-><init>(I)V

    invoke-virtual {v1, v6}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v1, v5}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Lnet/fortuna/ical4j/model/Property;)Z

    .line 81
    new-instance v6, Lnet/fortuna/ical4j/model/property/Sequence;

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Lnet/fortuna/ical4j/model/property/Sequence;-><init>(I)V

    invoke-virtual {v1, v6}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 85
    .end local v1    # "compProps":Lnet/fortuna/ical4j/model/PropertyList;
    .end local v2    # "component":Lnet/fortuna/ical4j/model/Component;
    .end local v5    # "sequence":Lnet/fortuna/ical4j/model/property/Sequence;
    :cond_2
    return-object p1
.end method
