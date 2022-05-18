.class Lcn/nubia/music/repository/PlaylistLocalDataSource$9;
.super Lcn/nubia/music/database/AccessRequest;
.source "PlaylistLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/repository/PlaylistLocalDataSource;->getPlaylistById(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/music/database/AccessRequest",
        "<",
        "Lcn/nubia/music/online/model/PlaylistModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/music/repository/PlaylistLocalDataSource;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$9;->b:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    iput-object p3, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$9;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/nubia/music/database/AccessRequest;-><init>(Lcn/nubia/music/database/AccessListener;)V

    return-void
.end method


# virtual methods
.method protected accessInBackground()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$9;->b:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-static {v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->access$000(Lcn/nubia/music/repository/PlaylistLocalDataSource;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$9;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/music/app/db/PlaylistDao;->getPlaylistById(Landroid/content/Context;Ljava/lang/String;)Lcn/nubia/music/online/model/PlaylistModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource$9;->deliverData(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
