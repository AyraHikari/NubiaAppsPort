.class Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache$1;
.super Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;
    .param p2, "maxSize"    # I

    .prologue
    .line 19
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache$1;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;

    invoke-direct {p0, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache$1;->sizeOf(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 22
    array-length v0, p2

    return v0
.end method
