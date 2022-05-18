.class Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;
.super Ljava/lang/RuntimeException;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorIOException"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 1676
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1677
    return-void
.end method


# virtual methods
.method getException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 1679
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method
