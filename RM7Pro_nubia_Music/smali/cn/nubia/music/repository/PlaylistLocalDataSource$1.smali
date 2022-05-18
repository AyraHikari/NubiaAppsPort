.class Lcn/nubia/music/repository/PlaylistLocalDataSource$1;
.super Lcn/nubia/music/database/AccessRequest;
.source "PlaylistLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/repository/PlaylistLocalDataSource;->getPlaylists(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/music/database/AccessRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Lcn/nubia/music/online/model/MediaModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/repository/PlaylistLocalDataSource;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$1;->a:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-direct {p0, p2}, Lcn/nubia/music/database/AccessRequest;-><init>(Lcn/nubia/music/database/AccessListener;)V

    return-void
.end method


# virtual methods
.method protected accessInBackground()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$1;->a:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-static {v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->access$000(Lcn/nubia/music/repository/PlaylistLocalDataSource;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/db/PlaylistDao;->getPlayLists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource$1;->deliverData(Ljava/lang/Object;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$1;->a:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-static {v1}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->access$000(Lcn/nubia/music/repository/PlaylistLocalDataSource;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/nubia/music/app/db/PlaylistDao;->getPlaylistsCover(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource$1;->deliverData(Ljava/lang/Object;)V

    goto :goto_0
.end method
