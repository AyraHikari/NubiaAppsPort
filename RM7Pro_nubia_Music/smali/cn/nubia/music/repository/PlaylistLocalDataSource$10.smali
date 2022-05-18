.class Lcn/nubia/music/repository/PlaylistLocalDataSource$10;
.super Lcn/nubia/music/database/AccessRequest;
.source "PlaylistLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/repository/PlaylistLocalDataSource;->getSongListOfPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/music/repository/PlaylistLocalDataSource;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$10;->b:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    iput-object p3, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$10;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/nubia/music/database/AccessRequest;-><init>(Lcn/nubia/music/database/AccessListener;)V

    return-void
.end method


# virtual methods
.method protected accessInBackground()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$10;->b:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-static {v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->access$000(Lcn/nubia/music/repository/PlaylistLocalDataSource;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$10;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/music/app/db/PlaylistDao;->getSongListOfPlaylist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource$10;->deliverData(Ljava/lang/Object;)V

    .line 86
    return-void
.end method
