.class Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;J)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-wide p2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    return-void
.end method

.method private getUpdateInfo(II)Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .locals 6

    .line 290
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;-><init>(Lcn/nubia/gallery3d/app/AlbumDataLoader$1;)V

    .line 291
    iget-wide v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    .line 292
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$800(Lcn/nubia/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 293
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1000(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v3

    iput v3, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 294
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$1100(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v3

    :goto_0
    if-ge p1, p2, :cond_1

    .line 296
    rem-int/lit16 v4, p1, 0x3e8

    .line 297
    aget-wide v4, v3, v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    .line 298
    iput p1, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int/2addr p2, p1

    .line 299
    iput p2, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public call()Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$400(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$500(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->getUpdateInfo(II)Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

    move-result-object v0

    .line 275
    iget v1, v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v1, :cond_0

    return-object v0

    .line 278
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$600(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    .line 279
    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$400(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v2

    .line 278
    invoke-direct {p0, v1, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->getUpdateInfo(II)Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

    move-result-object v1

    .line 280
    iget v2, v1, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v2, :cond_1

    return-object v1

    .line 283
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$500(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$700(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->getUpdateInfo(II)Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

    move-result-object v1

    .line 284
    iget v2, v1, Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v2, :cond_2

    return-object v1

    .line 287
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$800(Lcn/nubia/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v1

    iget-wide v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->call()Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
