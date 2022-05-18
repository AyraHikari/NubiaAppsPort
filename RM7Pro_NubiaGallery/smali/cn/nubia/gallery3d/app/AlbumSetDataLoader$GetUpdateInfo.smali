.class Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;J)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-wide p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    return-void
.end method

.method private getInvalidIndex(J)I
    .locals 6

    .line 257
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$400(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v0

    .line 258
    array-length v1, v0

    .line 259
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$500(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$600(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 260
    rem-int v4, v2, v1

    .line 261
    aget-wide v4, v0, v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public call()Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    iget-wide v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->getInvalidIndex(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$700(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-object v1

    .line 270
    :cond_0
    new-instance v2, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    invoke-direct {v2, v1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;-><init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;)V

    .line 271
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$700(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)J

    move-result-wide v3

    iput-wide v3, v2, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 272
    iput v0, v2, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 273
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I

    move-result v0

    iput v0, v2, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->call()Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
