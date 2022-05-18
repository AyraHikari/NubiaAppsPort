.class public Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field private static final BLACK:Z = true

.field private static final RED:Z


# instance fields
.field private color:Z

.field private element:Ljava/lang/Object;

.field private key:Ljava/lang/Object;

.field private left:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

.field private parent:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

.field private right:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    .line 181
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->color:Z

    .line 183
    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->left:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    return-object v0
.end method

.method static access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .param p1, "x1"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->left:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    return-object p1
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->parent:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    return-object v0
.end method

.method static access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .param p1, "x1"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->parent:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    return-object p1
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->right:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    return-object v0
.end method

.method static access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .param p1, "x1"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->right:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    return-object p1
.end method

.method static access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static access$402(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 146
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    return-object p1
.end method

.method static access$500(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->color:Z

    return v0
.end method

.method static access$502(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)Z
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->color:Z

    return p1
.end method

.method static access$600(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 146
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method static access$602(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 146
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .local v0, "t":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    iget-boolean v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->color:Z

    iput-boolean v1, v0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->color:Z

    .line 193
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 217
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 218
    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 211
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    .line 212
    .local v0, "old":Ljava/lang/Object;
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    .line 213
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
