.class Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lorg/apache/commons/lang/Entities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrimitiveEntityMap"
.end annotation


# instance fields
.field private final mapNameToValue:Ljava/util/Map;

.field private final mapValueToName:Lorg/apache/commons/lang/IntHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 446
    new-instance v0, Lorg/apache/commons/lang/IntHashMap;

    invoke-direct {v0}, Lorg/apache/commons/lang/IntHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapValueToName:Lorg/apache/commons/lang/IntHashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapValueToName:Lorg/apache/commons/lang/IntHashMap;

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/lang/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapValueToName:Lorg/apache/commons/lang/IntHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public value(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 469
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 470
    const/4 v1, -0x1

    .line 472
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
