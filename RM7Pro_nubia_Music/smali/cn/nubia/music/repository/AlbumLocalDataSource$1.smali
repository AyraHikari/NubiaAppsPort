.class Lcn/nubia/music/repository/AlbumLocalDataSource$1;
.super Lcn/nubia/music/database/AccessRequest;
.source "AlbumLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/repository/AlbumLocalDataSource;->getAllAlbum(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
.field final synthetic a:Lcn/nubia/music/repository/AlbumLocalDataSource;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$1;->a:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-direct {p0, p2}, Lcn/nubia/music/database/AccessRequest;-><init>(Lcn/nubia/music/database/AccessListener;)V

    return-void
.end method


# virtual methods
.method protected accessInBackground()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$1;->a:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-static {v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->access$000(Lcn/nubia/music/repository/AlbumLocalDataSource;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/db/AlbumDao;->getAllAlbum(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource$1;->deliverData(Ljava/lang/Object;)V

    .line 31
    return-void
.end method
