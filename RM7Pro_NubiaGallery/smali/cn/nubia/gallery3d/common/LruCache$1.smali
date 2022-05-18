.class Lcn/nubia/gallery3d/common/LruCache$1;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/common/LruCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/common/LruCache;

.field final synthetic val$capacity:I


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/common/LruCache;IFZI)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/gallery3d/common/LruCache$1;->this$0:Lcn/nubia/gallery3d/common/LruCache;

    iput p5, p0, Lcn/nubia/gallery3d/common/LruCache$1;->val$capacity:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/LruCache$1;->size()I

    move-result p1

    iget v0, p0, Lcn/nubia/gallery3d/common/LruCache$1;->val$capacity:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
