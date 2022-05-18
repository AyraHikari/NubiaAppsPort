.class Lcn/nubia/music/repository/AlbumLocalDataSource$6;
.super Lcn/nubia/music/database/AccessRequest;
.source "AlbumLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/repository/AlbumLocalDataSource;->addAlbumToPlaylist(Ljava/lang/String;Ljava/lang/String;[JLcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/music/database/AccessRequest",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[J

.field final synthetic d:Lcn/nubia/music/repository/AlbumLocalDataSource;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->d:Lcn/nubia/music/repository/AlbumLocalDataSource;

    iput-object p3, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->a:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->b:Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->c:[J

    invoke-direct {p0, p2}, Lcn/nubia/music/database/AccessRequest;-><init>(Lcn/nubia/music/database/AccessListener;)V

    return-void
.end method


# virtual methods
.method protected accessInBackground()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->d:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-static {v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->access$000(Lcn/nubia/music/repository/AlbumLocalDataSource;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->c:[J

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/music/app/db/AlbumDao;->addAlbumToPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource$6;->deliverData(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
