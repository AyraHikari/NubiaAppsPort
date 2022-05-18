.class public abstract Lnet/fortuna/ical4j/model/AbstractContentFactory;
.super Ljava/lang/Object;
.source "AbstractContentFactory.java"


# instance fields
.field private final defaultFactories:Ljava/util/Map;

.field private final extendedFactories:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/AbstractContentFactory;->defaultFactories:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/AbstractContentFactory;->extendedFactories:Ljava/util/Map;

    .line 62
    return-void
.end method


# virtual methods
.method protected allowIllegalNames()Z
    .locals 1

    .prologue
    .line 95
    const-string v0, "ical4j.parsing.relaxed"

    .line 96
    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 95
    return v0
.end method

.method protected final getFactory(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v1, p0, Lnet/fortuna/ical4j/model/AbstractContentFactory;->defaultFactories:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "factory":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 86
    iget-object v1, p0, Lnet/fortuna/ical4j/model/AbstractContentFactory;->extendedFactories:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method protected final registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "factory"    # Ljava/lang/Object;

    .prologue
    .line 68
    iget-object v0, p0, Lnet/fortuna/ical4j/model/AbstractContentFactory;->defaultFactories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method protected final registerExtendedFactory(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "factory"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Lnet/fortuna/ical4j/model/AbstractContentFactory;->extendedFactories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method
