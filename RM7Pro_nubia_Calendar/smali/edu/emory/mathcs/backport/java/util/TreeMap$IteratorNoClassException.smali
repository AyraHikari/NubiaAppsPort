.class Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;
.super Ljava/lang/RuntimeException;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorNoClassException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ClassNotFoundException;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/ClassNotFoundException;

    .prologue
    .line 1685
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1686
    return-void
.end method


# virtual methods
.method getException()Ljava/lang/ClassNotFoundException;
    .locals 1

    .prologue
    .line 1688
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassNotFoundException;

    return-object v0
.end method
