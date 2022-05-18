.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
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
.field mUpdateInfo:Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 0

    .line 1367
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;

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

    .line 1364
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 1374
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-wide v2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    invoke-static {v1, v2, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2402(Lcn/nubia/gallery3d/app/PhotoDataAdapter;J)J

    .line 1376
    iget v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1377
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget v2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2502(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I

    .line 1378
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2002(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I

    .line 1379
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2600(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2602(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I

    .line 1382
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget v2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2202(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I

    .line 1383
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    .line 1385
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    const/16 v2, 0x10

    if-eqz v1, :cond_3

    .line 1386
    iget v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1900(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1387
    iget v3, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v4, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1388
    rem-int/lit8 v4, v1, 0x10

    :goto_0
    if-ge v1, v3, :cond_3

    .line 1390
    iget-object v5, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)[Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v5

    iget-object v6, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v7, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/data/MediaItem;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_2

    const/4 v4, 0x0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1396
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)[Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1397
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1402(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;

    .line 1399
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2800(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    .line 1400
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2900(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    .line 1401
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    .line 1403
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1404
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcn/nubia/gallery3d/data/Path;)V

    .line 1407
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    return-object v2
.end method
