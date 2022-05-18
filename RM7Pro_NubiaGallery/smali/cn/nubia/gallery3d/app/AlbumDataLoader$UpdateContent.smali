.class Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumDataLoader;
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
.field private mUpdateInfo:Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

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

    .line 307
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

    .line 318
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    iget-wide v2, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    invoke-static {v1, v2, v3}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$802(Lcn/nubia/gallery3d/app/AlbumDataLoader;J)J

    .line 319
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v1

    iget v2, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    if-eq v1, v2, :cond_2

    .line 320
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    iget v2, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1002(Lcn/nubia/gallery3d/app/AlbumDataLoader;I)I

    .line 321
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1200(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1200(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;->onSizeChanged(I)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$700(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$702(Lcn/nubia/gallery3d/app/AlbumDataLoader;I)I

    .line 323
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$500(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$502(Lcn/nubia/gallery3d/app/AlbumDataLoader;I)I

    .line 326
    :cond_2
    iget-object v1, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    return-object v2

    .line 329
    :cond_3
    iget v3, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$600(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 330
    iget v4, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$700(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_7

    .line 333
    rem-int/lit16 v5, v3, 0x3e8

    .line 334
    iget-object v6, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v6}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1100(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v6

    iget-wide v7, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    aput-wide v7, v6, v5

    .line 335
    iget v6, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v6, :cond_4

    return-object v2

    .line 337
    :cond_4
    instance-of v7, v6, Lcn/nubia/gallery3d/data/MultiShootItem;

    if-eqz v7, :cond_5

    .line 338
    iget-object v7, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v7}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1300(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[I

    move-result-object v7

    move-object v8, v6

    check-cast v8, Lcn/nubia/gallery3d/data/MultiShootItem;

    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalCount()I

    move-result v8

    aput v8, v7, v5

    .line 340
    :cond_5
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    .line 341
    iget-object v9, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1400(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    aget-wide v9, v9, v5

    cmp-long v9, v9, v7

    if-eqz v9, :cond_6

    .line 342
    iget-object v9, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1400(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    aput-wide v7, v9, v5

    .line 343
    iget-object v7, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v7}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1500(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v7

    aput-object v6, v7, v5

    .line 344
    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1200(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$400(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v5

    if-lt v3, v5, :cond_6

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$500(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 345
    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1200(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method
