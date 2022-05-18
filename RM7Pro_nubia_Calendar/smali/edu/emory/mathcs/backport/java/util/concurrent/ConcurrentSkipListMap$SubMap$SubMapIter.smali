.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SubMapIter"
.end annotation


# instance fields
.field lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

.field next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

.field nextValue:Ljava/lang/Object;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 2
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 3035
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3037
    :cond_0
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$200(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3038
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_2

    .line 3049
    :goto_1
    return-void

    .line 3037
    :cond_1
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$300(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    goto :goto_0

    .line 3040
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 3041
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_0

    .line 3042
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-static {p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$400(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3043
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_1

    .line 3045
    :cond_3
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_1
.end method

.method private ascend()V
    .locals 3

    .prologue
    .line 3067
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3068
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_1

    .line 3079
    :goto_0
    return-void

    .line 3070
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 3071
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_0

    .line 3072
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$500(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3073
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 3075
    :cond_2
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method private descend()V
    .locals 4

    .prologue
    .line 3083
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$600(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3084
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_1

    .line 3095
    :goto_0
    return-void

    .line 3086
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 3087
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_0

    .line 3088
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$700(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3089
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 3091
    :cond_2
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final advance()V
    .locals 1

    .prologue
    .line 3056
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v0, :cond_0

    .line 3057
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3058
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3059
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3060
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->descend()V

    .line 3063
    :goto_0
    return-void

    .line 3062
    :cond_1
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->ascend()V

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 3052
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 3098
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3099
    .local v0, "l":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_0

    .line 3100
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3101
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->access$600(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    move-result-object v1

    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3103
    return-void
.end method
