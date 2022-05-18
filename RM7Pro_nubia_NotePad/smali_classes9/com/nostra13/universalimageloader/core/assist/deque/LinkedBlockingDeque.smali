.class public Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/deque/BlockingDeque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;,
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;,
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Lcom/nostra13/universalimageloader/core/assist/deque/BlockingDeque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field transient first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V

    .line 136
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 144
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 119
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 124
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 129
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 145
    if-gtz p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 147
    :cond_0
    iput p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v2, 0x7fffffff

    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V

    .line 160
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 161
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 163
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1

    .line 165
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 171
    throw v2

    .line 166
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    :try_start_1
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v3, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Deque full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 172
    return-void
.end method

.method private linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 184
    .local v0, "f":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 185
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 186
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    .line 187
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 190
    :goto_1
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 191
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 192
    const/4 v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iput-object p1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_0

    .line 201
    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 203
    .local v0, "l":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 204
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 205
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    .line 206
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 209
    :goto_1
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 210
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 211
    const/4 v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iput-object p1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 1168
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1169
    const/4 v1, 0x0

    iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 1170
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1171
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1175
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1176
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1180
    return-void

    .line 1178
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 220
    .local v0, "f":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 233
    :goto_0
    return-object v1

    .line 222
    :cond_0
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 223
    .local v2, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 224
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 225
    iput-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 226
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 227
    if-nez v2, :cond_1

    .line 228
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 231
    :goto_1
    iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 232
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 230
    :cond_1
    iput-object v3, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private unlinkLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 241
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 242
    .local v1, "l":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    move-object v0, v3

    .line 255
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget-object v2, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 245
    .local v2, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 246
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 247
    iput-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 248
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 249
    if-nez v2, :cond_1

    .line 250
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 253
    :goto_1
    iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 254
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 252
    :cond_1
    iput-object v3, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1147
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1150
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1152
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1153
    iget-object v2, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1152
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_0

    .line 1155
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1159
    return-void

    .line 1157
    .end local v1    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1158
    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 960
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 961
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v0, "f":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 964
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 965
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 966
    .local v2, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 967
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 968
    move-object v0, v2

    .line 969
    goto :goto_0

    .line 970
    .end local v2    # "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 971
    const/4 v3, 0x0

    iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 972
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 976
    return-void

    .line 974
    .end local v0    # "f":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 975
    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 796
    if-nez p1, :cond_0

    .line 804
    :goto_0
    return v2

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 799
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_2

    .line 802
    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 803
    const/4 v2, 0x1

    .line 806
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 801
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 806
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 807
    throw v2
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 708
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 719
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 720
    :cond_0
    if-ne p1, p0, :cond_1

    .line 721
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 723
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 725
    :try_start_0
    iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 726
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 727
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 730
    return v2

    .line 732
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 733
    throw v3
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 674
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .line 523
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 524
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 525
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 533
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 534
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 535
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 991
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 305
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 306
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 307
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 308
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 310
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 312
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 310
    return v2

    .line 312
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 313
    throw v2
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 375
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 376
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 377
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 378
    .local v2, "nanos":J
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 379
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 381
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 382
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 383
    const/4 v4, 0x0

    .line 388
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 386
    :goto_1
    return v4

    .line 384
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 386
    :cond_2
    const/4 v4, 0x1

    .line 388
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 389
    throw v4
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 321
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 322
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 323
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 324
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 326
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 328
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    return v2

    .line 328
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 329
    throw v2
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 399
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 400
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 401
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 402
    .local v2, "nanos":J
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 403
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 405
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 406
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 407
    const/4 v4, 0x0

    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 410
    :goto_1
    return v4

    .line 408
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 410
    :cond_2
    const/4 v4, 0x1

    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 413
    throw v4
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 540
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 544
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 542
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 550
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 554
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 555
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 438
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 440
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 442
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 440
    return-object v1

    .line 442
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 443
    throw v1
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 485
    .local v2, "nanos":J
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 486
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 489
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_1

    .line 490
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 491
    const/4 v1, 0x0

    .line 496
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    :goto_1
    return-object v1

    .line 492
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 497
    throw v4
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 448
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 450
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 452
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 450
    return-object v1

    .line 452
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 453
    throw v1
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 503
    .local v2, "nanos":J
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 504
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 507
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_1

    .line 508
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 509
    const/4 v1, 0x0

    .line 514
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 512
    :goto_1
    return-object v1

    .line 510
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 515
    throw v4
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 744
    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 626
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 338
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 339
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 340
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 341
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 347
    throw v2

    .line 346
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 348
    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 356
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 357
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 358
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 359
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 361
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 365
    throw v2

    .line 364
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 366
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    .prologue
    .line 692
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 693
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 695
    :try_start_0
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 697
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 695
    return v1

    .line 697
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 698
    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 769
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 421
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 422
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 423
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 559
    if-nez p1, :cond_0

    .line 570
    :goto_0
    return v2

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 562
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_2

    .line 565
    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    const/4 v2, 0x1

    .line 572
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 564
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 572
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 573
    throw v2
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 431
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 432
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 433
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 577
    if-nez p1, :cond_0

    .line 588
    :goto_0
    return v2

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 580
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_2

    .line 583
    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    const/4 v2, 0x1

    .line 590
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 582
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 590
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 591
    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 778
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 779
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 781
    :try_start_0
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 781
    return v1

    .line 783
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 784
    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 458
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 461
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 462
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 466
    throw v2

    .line 465
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 463
    return-object v1
.end method

.method public takeLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 471
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 474
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 475
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 478
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 479
    throw v2

    .line 478
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 864
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 865
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 867
    :try_start_0
    iget v5, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 868
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 869
    .local v1, "k":I
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v4, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v4, :cond_0

    .line 870
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 869
    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 871
    return-object v0

    .line 873
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v4    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 874
    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 915
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 917
    :try_start_0
    array-length v5, p1

    iget v6, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    if-ge v5, v6, :cond_0

    .line 919
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    iget v6, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 921
    :cond_0
    const/4 v1, 0x0

    .line 922
    .local v1, "k":I
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v4, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v4, :cond_1

    .line 923
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 922
    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 924
    :cond_1
    array-length v5, p1

    if-le v5, v2, :cond_2

    .line 925
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 926
    return-object p1

    .line 928
    .end local v2    # "k":I
    .end local v4    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 929
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 933
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 934
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 936
    :try_start_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 937
    .local v2, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_0

    .line 938
    const-string v4, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 947
    :goto_0
    return-object v4

    .line 940
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 943
    :goto_1
    iget-object v0, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 944
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 945
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 946
    if-nez v2, :cond_2

    .line 947
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 951
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 948
    :cond_2
    const/16 v4, 0x2c

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 951
    .end local v2    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 952
    throw v4
.end method

.method unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "x":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 264
    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 265
    .local v0, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    .line 278
    :goto_0
    return-void

    .line 267
    :cond_0
    if-nez v0, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_1
    iput-object v0, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 271
    iput-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 272
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 275
    iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 276
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0
.end method
