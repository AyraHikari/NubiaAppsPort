.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field currentTable:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

.field lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

.field nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

.field nextSegmentIndex:I

.field nextTableIndex:I

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 1067
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    iget-object v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    .line 1069
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    .line 1070
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->advance()V

    .line 1071
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 5

    .prologue
    .line 1076
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    if-ltz v2, :cond_2

    .line 1080
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->currentTable:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    aget-object v2, v2, v3

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1084
    :cond_2
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v2, :cond_0

    .line 1085
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v1, v2, v3

    .line 1086
    .local v1, "seg":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    iget v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 1087
    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->currentTable:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1088
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->currentTable:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1089
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->currentTable:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    aget-object v2, v2, v0

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_3

    .line 1090
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    goto :goto_0

    .line 1088
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 1102
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1103
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1104
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->advance()V

    .line 1105
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 1110
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1111
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1113
    return-void
.end method
