.class Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;
.super Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    .prologue
    .line 962
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)V

    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$1;)V
    .locals 0
    .param p1, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;
    .param p2, "x1"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$1;

    .prologue
    .line 962
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method advance()V
    .locals 2

    .prologue
    .line 964
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->access$200(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 965
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 967
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->access$300(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 968
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 972
    return-void

    .line 967
    :cond_0
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_0

    .line 968
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 970
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
