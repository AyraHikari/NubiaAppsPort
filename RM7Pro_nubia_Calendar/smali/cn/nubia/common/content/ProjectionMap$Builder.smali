.class public Lcn/nubia/common/content/ProjectionMap$Builder;
.super Ljava/lang/Object;
.source "ProjectionMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/common/content/ProjectionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMap:Lcn/nubia/common/content/ProjectionMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcn/nubia/common/content/ProjectionMap;

    invoke-direct {v0}, Lcn/nubia/common/content/ProjectionMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/common/content/ProjectionMap$Builder;->mMap:Lcn/nubia/common/content/ProjectionMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcn/nubia/common/content/ProjectionMap$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/common/content/ProjectionMap$Builder;->mMap:Lcn/nubia/common/content/ProjectionMap;

    invoke-static {v0, p1, p1}, Lcn/nubia/common/content/ProjectionMap;->access$000(Lcn/nubia/common/content/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/common/content/ProjectionMap$Builder;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "expression"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/common/content/ProjectionMap$Builder;->mMap:Lcn/nubia/common/content/ProjectionMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/nubia/common/content/ProjectionMap;->access$000(Lcn/nubia/common/content/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object p0
.end method

.method public addAll(Lcn/nubia/common/content/ProjectionMap;)Lcn/nubia/common/content/ProjectionMap$Builder;
    .locals 5
    .param p1, "map"    # Lcn/nubia/common/content/ProjectionMap;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcn/nubia/common/content/ProjectionMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcn/nubia/common/content/ProjectionMap$Builder;->mMap:Lcn/nubia/common/content/ProjectionMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcn/nubia/common/content/ProjectionMap;->access$000(Lcn/nubia/common/content/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public addAll([Ljava/lang/String;)Lcn/nubia/common/content/ProjectionMap$Builder;
    .locals 3
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 43
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 44
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcn/nubia/common/content/ProjectionMap$Builder;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "column":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public build()Lcn/nubia/common/content/ProjectionMap;
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcn/nubia/common/content/ProjectionMap$Builder;->mMap:Lcn/nubia/common/content/ProjectionMap;

    invoke-virtual {v1}, Lcn/nubia/common/content/ProjectionMap;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 58
    .local v0, "columns":[Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/common/content/ProjectionMap$Builder;->mMap:Lcn/nubia/common/content/ProjectionMap;

    invoke-virtual {v1}, Lcn/nubia/common/content/ProjectionMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcn/nubia/common/content/ProjectionMap$Builder;->mMap:Lcn/nubia/common/content/ProjectionMap;

    invoke-static {v1, v0}, Lcn/nubia/common/content/ProjectionMap;->access$102(Lcn/nubia/common/content/ProjectionMap;[Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcn/nubia/common/content/ProjectionMap$Builder;->mMap:Lcn/nubia/common/content/ProjectionMap;

    return-object v1
.end method
