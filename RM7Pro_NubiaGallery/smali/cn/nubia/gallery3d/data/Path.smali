.class public Lcn/nubia/gallery3d/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Path"

.field private static sRoot:Lcn/nubia/gallery3d/data/Path;


# instance fields
.field private mChildren:Lcn/nubia/gallery3d/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/IdentityCache<",
            "Ljava/lang/String;",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcn/nubia/gallery3d/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcn/nubia/gallery3d/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/Path;-><init>(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method private constructor <init>(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/nubia/gallery3d/data/Path;->mParent:Lcn/nubia/gallery3d/data/Path;

    .line 36
    iput-object p2, p0, Lcn/nubia/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-void
.end method

.method static clearAll()V
    .locals 4

    .line 207
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    .line 208
    :try_start_0
    new-instance v1, Lcn/nubia/gallery3d/data/Path;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/data/Path;-><init>(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v1, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static dumpAll()V
    .locals 2

    .line 213
    sget-object v0, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    const-string v1, ""

    invoke-static {v0, v1, v1}, Lcn/nubia/gallery3d/data/Path;->dumpAll(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static dumpAll(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 217
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v1

    const-string v2, "Path"

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcn/nubia/gallery3d/data/Path;->mChildren:Lcn/nubia/gallery3d/util/IdentityCache;

    if-eqz p1, :cond_3

    .line 222
    invoke-virtual {p1}, Lcn/nubia/gallery3d/util/IdentityCache;->keys()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    iget-object v4, p0, Lcn/nubia/gallery3d/data/Path;->mChildren:Lcn/nubia/gallery3d/util/IdentityCache;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/Path;

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "Path"

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_2

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+-- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/gallery3d/data/Path;->dumpAll(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+-- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/gallery3d/data/Path;->dumpAll(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 238
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;
    .locals 4

    .line 99
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 100
    :try_start_0
    monitor-exit v0

    return-object p0

    .line 101
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 102
    sget-object v1, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    const/4 v2, 0x0

    .line 103
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 104
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 128
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_7

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_6

    move v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_4

    .line 137
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const/16 v8, 0x7d

    if-ne v7, v8, :cond_2

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    if-ne v7, v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 145
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbalanced brace in path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 149
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 129
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_6

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_5

    move v7, v1

    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_3

    .line 166
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    if-ne v8, v5, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_1
    if-nez v7, :cond_2

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-nez v7, :cond_4

    .line 174
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    goto :goto_0

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbalanced brace in path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 178
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 158
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad sequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChild(D)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1
.end method

.method public getChild(I)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1
.end method

.method public getChild(J)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 65
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1
.end method

.method public getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;
    .locals 3

    .line 40
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/Path;->mChildren:Lcn/nubia/gallery3d/util/IdentityCache;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcn/nubia/gallery3d/util/IdentityCache;

    invoke-direct {v1}, Lcn/nubia/gallery3d/util/IdentityCache;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/data/Path;->mChildren:Lcn/nubia/gallery3d/util/IdentityCache;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/Path;

    if-eqz v1, :cond_1

    .line 45
    monitor-exit v0

    return-object v1

    .line 48
    :cond_1
    :goto_0
    new-instance v1, Lcn/nubia/gallery3d/data/Path;

    invoke-direct {v1, p0, p1}, Lcn/nubia/gallery3d/data/Path;-><init>(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcn/nubia/gallery3d/data/Path;->mChildren:Lcn/nubia/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1, v1}, Lcn/nubia/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getObject()Lcn/nubia/gallery3d/data/MediaObject;
    .locals 2

    .line 80
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaObject;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParent()Lcn/nubia/gallery3d/data/Path;
    .locals 2

    .line 55
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/Path;->mParent:Lcn/nubia/gallery3d/data/Path;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->getPrefixPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPath()Lcn/nubia/gallery3d/data/Path;
    .locals 4

    .line 188
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    if-eq p0, v1, :cond_1

    move-object v1, p0

    .line 193
    :goto_0
    iget-object v2, v1, Lcn/nubia/gallery3d/data/Path;->mParent:Lcn/nubia/gallery3d/data/Path;

    sget-object v3, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    if-eq v2, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 196
    :cond_0
    monitor-exit v0

    return-object v1

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setObject(Lcn/nubia/gallery3d/data/MediaObject;)V
    .locals 2

    .line 73
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    .line 75
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public split()[Ljava/lang/String;
    .locals 6

    .line 111
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, p0

    .line 113
    :goto_0
    :try_start_0
    sget-object v3, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lcn/nubia/gallery3d/data/Path;->mParent:Lcn/nubia/gallery3d/data/Path;

    goto :goto_0

    .line 116
    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    move-object v3, p0

    .line 118
    :goto_1
    sget-object v4, Lcn/nubia/gallery3d/data/Path;->sRoot:Lcn/nubia/gallery3d/data/Path;

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 119
    iget-object v5, v3, Lcn/nubia/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v2, v1

    .line 118
    iget-object v3, v3, Lcn/nubia/gallery3d/data/Path;->mParent:Lcn/nubia/gallery3d/data/Path;

    move v1, v4

    goto :goto_1

    .line 121
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 87
    const-class v0, Lcn/nubia/gallery3d/data/Path;

    monitor-enter v0

    .line 88
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 90
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    const-string v4, "/"

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
