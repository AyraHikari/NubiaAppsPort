.class public Lnet/fortuna/ical4j/filter/HasPropertyRule;
.super Lnet/fortuna/ical4j/filter/ComponentRule;
.source "HasPropertyRule.java"


# instance fields
.field private matchEquals:Z

.field private property:Lnet/fortuna/ical4j/model/Property;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/Property;)V
    .locals 1
    .param p1, "property"    # Lnet/fortuna/ical4j/model/Property;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/filter/HasPropertyRule;-><init>(Lnet/fortuna/ical4j/model/Property;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Property;Z)V
    .locals 0
    .param p1, "property"    # Lnet/fortuna/ical4j/model/Property;
    .param p2, "matchEquals"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Lnet/fortuna/ical4j/filter/ComponentRule;-><init>()V

    .line 71
    iput-object p1, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->property:Lnet/fortuna/ical4j/model/Property;

    .line 72
    iput-boolean p2, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->matchEquals:Z

    .line 73
    return-void
.end method


# virtual methods
.method public final match(Lnet/fortuna/ical4j/model/Component;)Z
    .locals 6
    .param p1, "component"    # Lnet/fortuna/ical4j/model/Component;

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "match":Z
    iget-object v4, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 81
    .local v3, "properties":Lnet/fortuna/ical4j/model/PropertyList;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Property;

    .line 83
    .local v2, "p":Lnet/fortuna/ical4j/model/Property;
    iget-boolean v4, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->matchEquals:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v4, v2}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v4, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const/4 v1, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "p":Lnet/fortuna/ical4j/model/Property;
    :cond_2
    return v1
.end method
