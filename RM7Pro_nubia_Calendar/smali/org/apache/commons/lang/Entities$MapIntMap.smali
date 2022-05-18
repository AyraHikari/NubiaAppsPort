.class abstract Lorg/apache/commons/lang/Entities$MapIntMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lorg/apache/commons/lang/Entities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MapIntMap"
.end annotation


# instance fields
.field protected final mapNameToValue:Ljava/util/Map;

.field protected final mapValueToName:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "nameToValue"    # Ljava/util/Map;
    .param p2, "valueToName"    # Ljava/util/Map;

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Lorg/apache/commons/lang/Entities$MapIntMap;->mapNameToValue:Ljava/util/Map;

    .line 489
    iput-object p2, p0, Lorg/apache/commons/lang/Entities$MapIntMap;->mapValueToName:Ljava/util/Map;

    .line 490
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$MapIntMap;->mapNameToValue:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$MapIntMap;->mapValueToName:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$MapIntMap;->mapValueToName:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public value(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$MapIntMap;->mapNameToValue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 513
    const/4 v1, -0x1

    .line 515
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
