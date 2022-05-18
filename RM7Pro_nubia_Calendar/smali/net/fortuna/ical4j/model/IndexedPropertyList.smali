.class public Lnet/fortuna/ical4j/model/IndexedPropertyList;
.super Ljava/lang/Object;
.source "IndexedPropertyList.java"


# static fields
.field private static final EMPTY_LIST:Lnet/fortuna/ical4j/model/PropertyList;


# instance fields
.field private index:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/model/IndexedPropertyList;->EMPTY_LIST:Lnet/fortuna/ical4j/model/PropertyList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;Ljava/lang/String;)V
    .locals 7
    .param p1, "list"    # Lnet/fortuna/ical4j/model/PropertyList;
    .param p2, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v1, "indexedProperties":Ljava/util/Map;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/fortuna/ical4j/model/Property;

    .line 62
    .local v5, "property":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {v5, p2}, Lnet/fortuna/ical4j/model/Property;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "j":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/fortuna/ical4j/model/Parameter;

    .line 64
    .local v3, "parameter":Lnet/fortuna/ical4j/model/Parameter;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/PropertyList;

    .line 65
    .local v4, "properties":Lnet/fortuna/ical4j/model/PropertyList;
    if-nez v4, :cond_1

    .line 66
    new-instance v4, Lnet/fortuna/ical4j/model/PropertyList;

    .end local v4    # "properties":Lnet/fortuna/ical4j/model/PropertyList;
    invoke-direct {v4}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    .line 67
    .restart local v4    # "properties":Lnet/fortuna/ical4j/model/PropertyList;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 72
    .end local v2    # "j":Ljava/util/Iterator;
    .end local v3    # "parameter":Lnet/fortuna/ical4j/model/Parameter;
    .end local v4    # "properties":Lnet/fortuna/ical4j/model/PropertyList;
    .end local v5    # "property":Lnet/fortuna/ical4j/model/Property;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lnet/fortuna/ical4j/model/IndexedPropertyList;->index:Ljava/util/Map;

    .line 73
    return-void
.end method


# virtual methods
.method public getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;
    .locals 2
    .param p1, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lnet/fortuna/ical4j/model/IndexedPropertyList;->index:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/PropertyList;

    .line 84
    .local v0, "properties":Lnet/fortuna/ical4j/model/PropertyList;
    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lnet/fortuna/ical4j/model/IndexedPropertyList;->EMPTY_LIST:Lnet/fortuna/ical4j/model/PropertyList;

    .line 87
    :cond_0
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 2
    .param p1, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/IndexedPropertyList;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    .line 100
    .local v0, "properties":Lnet/fortuna/ical4j/model/PropertyList;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 103
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
