.class public Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/BlockingDeque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$1;,
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$DescendingItr;,
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;,
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;,
        Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field private transient first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

.field private transient last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

.field private final lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

.field private final notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 94
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 82
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 84
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 86
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .line 103
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_0
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->capacity:I

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 118
    const v2, 0x7fffffff

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "e":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    .prologue
    .line 43
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static access$300(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    .prologue
    .line 43
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method static access$400(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    .prologue
    .line 43
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method private linkFirst(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 132
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->capacity:I

    if-lt v2, v3, :cond_0

    .line 133
    const/4 v2, 0x0

    .line 143
    :goto_0
    return v2

    .line 134
    :cond_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 135
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 136
    .local v0, "f":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)V

    .line 137
    .local v1, "x":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 138
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v2, :cond_1

    .line 139
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 142
    :goto_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 143
    const/4 v2, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private linkLast(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 150
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->capacity:I

    if-lt v2, v3, :cond_0

    .line 151
    const/4 v2, 0x0

    .line 161
    :goto_0
    return v2

    .line 152
    :cond_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 153
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 154
    .local v0, "l":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)V

    .line 155
    .local v1, "x":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 156
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v2, :cond_1

    .line 157
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 160
    :goto_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 161
    const/4 v2, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

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
    const/4 v2, 0x0

    .line 1021
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1022
    const/4 v1, 0x0

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 1023
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 1024
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 1027
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1028
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1032
    return-void

    .line 1030
    :cond_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unlink(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)V
    .locals 3
    .param p1, "x"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v1, p1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 205
    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    iget-object v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 206
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    if-nez v1, :cond_1

    .line 207
    if-nez v0, :cond_0

    .line 208
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 220
    :goto_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 221
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V

    .line 222
    return-void

    .line 210
    :cond_0
    iput-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 211
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_0

    .line 213
    :cond_1
    if-nez v0, :cond_2

    .line 214
    iput-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 215
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_0

    .line 217
    :cond_2
    iput-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 218
    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_0
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 169
    .local v0, "f":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-object v2

    .line 171
    :cond_0
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 172
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 173
    if-nez v1, :cond_1

    .line 174
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 177
    :goto_1
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 178
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 179
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_1
    iput-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private unlinkLast()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 187
    .local v0, "l":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-object v2

    .line 189
    :cond_0
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 190
    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 191
    if-nez v1, :cond_1

    .line 192
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 195
    :goto_1
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 196
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signal()V

    .line 197
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_1
    iput-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

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
    .line 1000
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1003
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1005
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 1006
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1005
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_0

    .line 1008
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1012
    return-void

    .line 1010
    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 866
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 867
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 868
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 872
    return-void

    .line 870
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 737
    if-nez p1, :cond_0

    .line 745
    :goto_0
    return v1

    .line 738
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 740
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :goto_1
    if-eqz v0, :cond_2

    .line 741
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 742
    const/4 v1, 0x1

    .line 745
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 740
    :cond_1
    :try_start_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 745
    :cond_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 900
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$DescendingItr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 4
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 630
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 631
    :cond_0
    if-ne p1, p0, :cond_1

    .line 632
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 633
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 635
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 636
    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    goto :goto_0

    .line 637
    :cond_2
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 638
    .local v0, "n":I
    const/4 v2, 0x0

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 639
    const/4 v2, 0x0

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 640
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .end local v0    # "n":I
    .end local v1    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;
    .param p2, "maxElements"    # I

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 656
    :cond_0
    if-ne p1, p0, :cond_1

    .line 657
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 658
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, "n":I
    :goto_0
    if-ge v0, p2, :cond_2

    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v1, :cond_2

    .line 662
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    const/4 v2, 0x0

    iput-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 664
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 665
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_3

    .line 669
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 670
    :cond_3
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public element()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .line 453
    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 454
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 462
    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 463
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 886
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 248
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 251
    :try_start_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 253
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offerFirst(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 306
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 307
    :cond_0
    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 308
    .local v2, "nanos":J
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v4

    add-long v0, v4, v2

    .line 309
    .local v0, "deadline":J
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 312
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    const/4 v4, 0x1

    .line 320
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v4

    .line 314
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 315
    const/4 v4, 0x0

    .line 320
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 316
    :cond_2
    :try_start_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v5, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 317
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v4

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 261
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 264
    :try_start_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 266
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offerLast(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 330
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 331
    :cond_0
    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 332
    .local v2, "nanos":J
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v4

    add-long v0, v4, v2

    .line 333
    .local v0, "deadline":J
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 336
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    const/4 v4, 0x1

    .line 344
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v4

    .line 338
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 339
    const/4 v4, 0x0

    .line 344
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 340
    :cond_2
    :try_start_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v5, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 341
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v4

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 469
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 471
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 469
    :cond_0
    :try_start_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 478
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 480
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 478
    :cond_0
    :try_start_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->pollFirst(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 369
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 371
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public pollFirst(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 411
    .local v2, "nanos":J
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, v2

    .line 412
    .local v0, "deadline":J
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 415
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 416
    .local v4, "x":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 424
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v4    # "x":Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 418
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    .line 419
    const/4 v4, 0x0

    .line 424
    .end local v4    # "x":Ljava/lang/Object;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 420
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v5, v2, v3, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 421
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v2, v0, v6

    goto :goto_0

    .line 424
    .end local v4    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 378
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 380
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public pollLast(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 431
    .local v2, "nanos":J
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, v2

    .line 432
    .local v0, "deadline":J
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 435
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 436
    .local v4, "x":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 444
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v4    # "x":Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 438
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    .line 439
    const/4 v4, 0x0

    .line 444
    .end local v4    # "x":Ljava/lang/Object;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 440
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v5, v2, v3, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 441
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v2, v0, v6

    goto :goto_0

    .line 444
    .end local v4    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public pop()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 685
    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 275
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 276
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->linkFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 283
    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 290
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 293
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->linkLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notFull:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 616
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->capacity:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    .line 618
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 354
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 485
    if-nez p1, :cond_0

    .line 496
    :goto_0
    return v1

    .line 486
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 488
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :goto_1
    if-eqz v0, :cond_2

    .line 489
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const/4 v1, 0x1

    .line 496
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 488
    :cond_1
    :try_start_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 496
    :cond_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 362
    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 363
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 501
    if-nez p1, :cond_0

    .line 512
    :goto_0
    return v1

    .line 502
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 504
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->last:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :goto_1
    if-eqz v0, :cond_2

    .line 505
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    const/4 v1, 0x1

    .line 512
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 504
    :cond_1
    :try_start_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 512
    :cond_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method removeNode(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)Z
    .locals 3
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .prologue
    .line 754
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 756
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 757
    if-ne v0, p1, :cond_0

    .line 758
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    const/4 v1, 0x1

    .line 764
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v1

    .line 756
    :cond_0
    :try_start_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 762
    :cond_1
    const/4 v1, 0x0

    .line 764
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 722
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 388
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v0

    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 389
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 392
    .end local v0    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public takeLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 400
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v0

    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 401
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->notEmpty:Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "x":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 782
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 784
    :try_start_0
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 785
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 786
    .local v1, "k":I
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .local v3, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_0

    .line 787
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v4, v0, v2

    .line 786
    iget-object v3, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 790
    :cond_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v3    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 831
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 833
    :try_start_0
    array-length v4, p1

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    if-ge v4, v5, :cond_0

    .line 834
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->count:I

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 839
    :cond_0
    const/4 v1, 0x0

    .line 840
    .local v1, "k":I
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->first:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .local v3, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_1

    .line 841
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v4, p1, v2

    .line 840
    iget-object v3, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 842
    :cond_1
    array-length v4, p1

    if-le v4, v2, :cond_2

    .line 843
    const/4 v4, 0x0

    aput-object v4, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    :cond_2
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .end local v2    # "k":I
    .end local v3    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 853
    :try_start_0
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 855
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
