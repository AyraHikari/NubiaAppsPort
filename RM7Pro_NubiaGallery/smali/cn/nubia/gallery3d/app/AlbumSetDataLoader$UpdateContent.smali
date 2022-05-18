.class Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUpdateInfo:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7

    .line 288
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$300(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 289
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 290
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    iget-wide v3, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    invoke-static {v2, v3, v4}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$702(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;J)J

    .line 291
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v2

    iget v3, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-eq v2, v3, :cond_3

    .line 292
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    iget v3, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$902(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;I)I

    .line 293
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    invoke-interface {v2, v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;->onSizeChanged(I)V

    .line 294
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$600(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$602(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;I)I

    .line 295
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1100(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1102(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;I)I

    .line 298
    :cond_3
    iget v2, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$500(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    if-lt v2, v3, :cond_5

    iget v2, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$600(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 299
    iget v2, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1200(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 300
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$400(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v3

    iget-wide v4, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    aput-wide v4, v3, v2

    .line 301
    iget-object v3, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v3

    .line 302
    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    return-object v1

    .line 303
    :cond_4
    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v5

    aput-wide v3, v5, v2

    .line 304
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1400(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcn/nubia/gallery3d/data/MediaSet;

    aput-object v4, v3, v2

    .line 305
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1200(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    aput-object v4, v3, v2

    .line 306
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1500(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[I

    move-result-object v3

    iget v4, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    aput v4, v3, v2

    .line 307
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v2, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    .line 308
    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1600(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    if-lt v2, v3, :cond_5

    iget v2, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1100(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 309
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v2

    iget v0, v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-interface {v2, v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;->onContentChanged(I)V

    :cond_5
    return-object v1
.end method
