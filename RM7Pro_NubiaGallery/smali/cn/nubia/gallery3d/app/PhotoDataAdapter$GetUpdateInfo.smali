.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0

    .line 1339
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method

.method private needContentReload()Z
    .locals 5

    .line 1342
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1900(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 1343
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)[Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v3

    rem-int/lit8 v4, v0, 0x10

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1345
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)[Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 1346
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public call()Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1352
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V

    .line 1353
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    .line 1354
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->needContentReload()Z

    move-result v1

    iput-boolean v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1355
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcn/nubia/gallery3d/data/Path;

    .line 1356
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1357
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1900(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    .line 1358
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    .line 1359
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$2500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1339
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->call()Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
