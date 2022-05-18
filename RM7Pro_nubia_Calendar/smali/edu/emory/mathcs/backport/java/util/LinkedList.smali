.class public Ledu/emory/mathcs/backport/java/util/LinkedList;
.super Ljava/util/AbstractSequentialList;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ledu/emory/mathcs/backport/java/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;,
        Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;,
        Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field private transient head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

.field private transient modCount:I

.field private transient size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 18
    const/4 v1, 0x0

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 34
    new-instance v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;-><init>(Ljava/lang/Object;)V

    .line 35
    .local v0, "sentinel":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iput-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 36
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 40
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/LinkedList;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 42
    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;

    .prologue
    .line 13
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    return v0
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;

    .prologue
    .line 13
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    return-object v0
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;
    .param p1, "x1"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    return-void
.end method

.method static access$300(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;
    .param p1, "x1"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static access$400(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;
    .param p1, "x1"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertAfter(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    return-void
.end method

.method private findFirst(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 76
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v1, :cond_3

    .line 77
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object v1, v0

    .line 85
    :goto_1
    return-object v1

    .line 76
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    goto :goto_0

    .line 81
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v1, :cond_3

    .line 82
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    goto :goto_2

    .line 85
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findLast(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v1, :cond_3

    .line 91
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object v1, v0

    .line 99
    :goto_1
    return-object v1

    .line 90
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    goto :goto_0

    .line 95
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v1, :cond_3

    .line 96
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_1

    .line 95
    :cond_2
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    goto :goto_2

    .line 99
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAt(I)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .locals 6
    .param p1, "idx"    # I

    .prologue
    .line 58
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 59
    .local v2, "size":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 60
    :cond_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "; Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_1
    shr-int/lit8 v3, v2, 0x1

    if-ge p1, v3, :cond_3

    .line 64
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v3, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_0
    if-lez p1, :cond_2

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 70
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .local v1, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_1
    return-object v1

    .line 68
    .end local v1    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :cond_3
    sub-int v3, v2, p1

    add-int/lit8 p1, v3, -0x1

    .line 69
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v3, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_2
    if-lez p1, :cond_4

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 70
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .restart local v1    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    goto :goto_1
.end method

.method private insertAfter(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V
    .locals 3
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 156
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    .line 157
    iget-object v1, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 158
    .local v1, "succ":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    new-instance v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;-><init>(Ljava/lang/Object;)V

    .line 159
    .local v0, "newe":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iput-object p1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 160
    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 161
    iput-object v0, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 162
    iput-object v0, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 163
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 164
    return-void
.end method

.method private insertAllBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/util/Collection;)Z
    .locals 7
    .param p1, "succ"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .param p2, "c"    # Ljava/util/Collection;

    .prologue
    .line 204
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 205
    .local v3, "itr":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    .line 226
    :goto_0
    return v6

    .line 206
    :cond_0
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    .line 207
    new-instance v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v2, v6}, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;-><init>(Ljava/lang/Object;)V

    .line 208
    .local v2, "first":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    move-object v5, v2

    .line 209
    .local v5, "prev":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    move-object v1, v2

    .line 210
    .local v1, "curr":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    const/4 v0, 0x1

    .line 211
    .local v0, "added":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    new-instance v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .end local v1    # "curr":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v1, v6}, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;-><init>(Ljava/lang/Object;)V

    .line 213
    .restart local v1    # "curr":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iput-object v1, v5, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 214
    iput-object v5, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 215
    move-object v5, v1

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :cond_1
    iget-object v4, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 220
    .local v4, "pred":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iput-object v4, v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 221
    iput-object p1, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 222
    iput-object v2, v4, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 223
    iput-object v1, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 224
    iget v6, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    add-int/2addr v6, v0

    iput v6, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 226
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private insertBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V
    .locals 3
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 167
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    .line 168
    iget-object v1, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 169
    .local v1, "pred":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    new-instance v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;-><init>(Ljava/lang/Object;)V

    .line 170
    .local v0, "newe":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 171
    iput-object p1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 172
    iput-object v0, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 173
    iput-object v0, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 174
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 175
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 515
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 516
    .local v2, "size":I
    new-instance v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;-><init>(Ljava/lang/Object;)V

    .line 517
    .local v0, "head":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iput-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 518
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 519
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_0
    iput v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 522
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 523
    return-void
.end method

.method private remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;
    .locals 3
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .prologue
    .line 178
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-ne p1, v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 179
    :cond_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    .line 180
    iget-object v1, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 181
    .local v1, "succ":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iget-object v0, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 182
    .local v0, "pred":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 183
    iput-object v0, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 184
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 185
    iget-object v2, p1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    return-object v2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 505
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 506
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v1, :cond_0

    .line 507
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 506
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    goto :goto_0

    .line 509
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 247
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0, p2}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    :goto_1
    invoke-direct {p0, v0, p2}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->getAt(I)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    goto :goto_1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 151
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .prologue
    .line 200
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    :goto_0
    invoke-direct {p0, v0, p2}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertAllBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->getAt(I)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 196
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertAllBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 264
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertAfter(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 268
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 230
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->modCount:I

    .line 231
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v2, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v2, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 233
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "clone":Ledu/emory/mathcs/backport/java/util/LinkedList;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "clone":Ledu/emory/mathcs/backport/java/util/LinkedList;
    check-cast v0, Ledu/emory/mathcs/backport/java/util/LinkedList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .restart local v0    # "clone":Ledu/emory/mathcs/backport/java/util/LinkedList;
    new-instance v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;-><init>(Ljava/lang/Object;)V

    .line 530
    .local v2, "head":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iput-object v2, v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v2, v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 531
    iput-object v2, v0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 532
    invoke-virtual {v0, p0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 533
    return-object v0

    .line 528
    .end local v0    # "clone":Ledu/emory/mathcs/backport/java/util/LinkedList;
    .end local v2    # "head":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->findFirst(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 358
    new-instance v0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;-><init>(Ledu/emory/mathcs/backport/java/util/LinkedList;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 236
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->getAt(I)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 299
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 304
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "idx":I
    if-nez p1, :cond_1

    .line 105
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v2, :cond_3

    .line 106
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v2, v1

    .line 114
    :goto_1
    return v2

    .line 105
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v2, :cond_3

    .line 111
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    .line 110
    :cond_2
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 118
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    add-int/lit8 v1, v2, -0x1

    .line 119
    .local v1, "idx":I
    if-nez p1, :cond_1

    .line 120
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v2, :cond_3

    .line 121
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v2, v1

    .line 129
    :goto_1
    return v2

    .line 120
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 125
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .restart local v0    # "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v2, :cond_3

    .line 126
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 129
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/LinkedList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 260
    new-instance v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    :goto_0
    invoke-direct {v1, p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;I)V

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->getAt(I)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 272
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertAfter(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 277
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->insertBefore(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    goto :goto_0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 252
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->getAt(I)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->findFirst(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    .line 190
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 191
    :cond_0
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    .line 192
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->findFirst(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    .line 317
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 319
    :goto_0
    return v1

    .line 318
    :cond_0
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    .line 319
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->findLast(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    .line 324
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 326
    :goto_0
    return v1

    .line 325
    :cond_0
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/LinkedList;->remove(Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    .line 326
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->getAt(I)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    .line 241
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    .line 242
    .local v1, "old":Ljava/lang/Object;
    iput-object p2, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    .line 243
    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 133
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 134
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 135
    .local v2, "i":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, v4, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .local v1, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v1, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    iget-object v4, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    aput-object v4, v0, v2

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 136
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 140
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->size:I

    .line 141
    .local v3, "size":I
    array-length v4, p1

    if-ge v4, v3, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .line 144
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    .line 145
    .local v1, "i":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v4, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    :goto_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/LinkedList;->head:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-eq v0, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    iget-object v4, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    aput-object v4, p1, v1

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 146
    :cond_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/4 v4, 0x0

    aput-object v4, p1, v1

    move v1, v2

    .line 147
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    return-object p1
.end method
