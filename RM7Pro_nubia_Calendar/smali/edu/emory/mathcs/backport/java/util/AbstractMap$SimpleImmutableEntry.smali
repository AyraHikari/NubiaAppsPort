.class public Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/AbstractMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleImmutableEntry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 164
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 175
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 176
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 211
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 213
    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->access$100(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->access$100(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
