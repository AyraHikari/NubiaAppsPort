.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "v"    # Ljava/lang/Object;

    .prologue
    .line 1133
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    .line 1134
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1135
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1147
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1148
    :cond_0
    invoke-super {p0, p1}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1149
    .local v0, "v":Ljava/lang/Object;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    return-object v0
.end method
