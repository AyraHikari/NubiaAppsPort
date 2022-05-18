.class Ledu/emory/mathcs/backport/java/util/TreeSet$IOIterator;
.super Ledu/emory/mathcs/backport/java/util/TreeMap$IOIterator;
.source "TreeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IOIterator"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .param p2, "remaining"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$IOIterator;-><init>(Ljava/io/ObjectInputStream;I)V

    .line 199
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 201
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet$IOIterator;->remaining:I

    if-gtz v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 202
    :cond_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet$IOIterator;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet$IOIterator;->remaining:I

    .line 204
    :try_start_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeSet$IOIterator;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ledu/emory/mathcs/backport/java/util/TreeSet;->access$000()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;-><init>(Ljava/lang/ClassNotFoundException;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
