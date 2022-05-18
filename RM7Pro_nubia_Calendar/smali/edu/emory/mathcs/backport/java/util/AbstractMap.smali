.class public abstract Ledu/emory/mathcs/backport/java/util/AbstractMap;
.super Ljava/util/AbstractMap;
.source "AbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;,
        Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;
    }
.end annotation


# instance fields
.field transient keySet:Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method static access$100(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-static {p0, p1}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 236
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ledu/emory/mathcs/backport/java/util/AbstractMap$1;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$1;-><init>(Ledu/emory/mathcs/backport/java/util/AbstractMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap;->keySet:Ljava/util/Set;

    .line 47
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap;->keySet:Ljava/util/Set;

    return-object v0
.end method
