.class Lcn/nubia/weather/data/GarbageCache$LimitQueue;
.super Ljava/lang/Object;
.source "GarbageCache.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/GarbageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mLimit:I

.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/data/GarbageCache;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/data/GarbageCache;I)V
    .locals 1
    .param p2, "limit"    # I

    .prologue
    .line 142
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iput-object p1, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->this$0:Lcn/nubia/weather/data/GarbageCache;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    .line 144
    iput p2, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mLimit:I

    .line 145
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mLimit:I

    if-lt v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 216
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 159
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 163
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mLimit:I

    if-lt v1, v2, :cond_0

    .line 227
    iget-object v1, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "head":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 230
    iget-object v1, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 234
    .end local v0    # "head":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 183
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    .local p1, "obj":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    .local p1, "obj":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcn/nubia/weather/data/GarbageCache$LimitQueue;, "Lcn/nubia/weather/data/GarbageCache$LimitQueue<TE;>;"
    .local p1, "arg0":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
