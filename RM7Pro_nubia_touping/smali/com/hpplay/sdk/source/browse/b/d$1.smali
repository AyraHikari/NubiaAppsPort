.class final Lcom/hpplay/sdk/source/browse/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/hpplay/sdk/source/browse/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hpplay/sdk/source/browse/b/d;
    .locals 6

    .prologue
    .line 85
    new-instance v2, Lcom/hpplay/sdk/source/browse/b/d;

    invoke-direct {v2, p1}, Lcom/hpplay/sdk/source/browse/b/d;-><init>(Landroid/os/Parcel;)V

    .line 87
    :try_start_0
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 91
    const-class v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/browse/b/d;->a(Lcom/hpplay/sdk/source/browse/b/d;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "LelinkServiceInfoWrapper"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/browse/b/d$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hpplay/sdk/source/browse/b/d;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/hpplay/sdk/source/browse/b/d;
    .locals 1

    .prologue
    .line 104
    new-array v0, p1, [Lcom/hpplay/sdk/source/browse/b/d;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/browse/b/d$1;->newArray(I)[Lcom/hpplay/sdk/source/browse/b/d;

    move-result-object v0

    return-object v0
.end method
