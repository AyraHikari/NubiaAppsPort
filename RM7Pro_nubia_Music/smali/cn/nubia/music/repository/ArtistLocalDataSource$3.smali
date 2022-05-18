.class Lcn/nubia/music/repository/ArtistLocalDataSource$3;
.super Lcn/nubia/music/database/AccessRequest;
.source "ArtistLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/repository/ArtistLocalDataSource;->getSongListOfArtist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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

.field final synthetic b:Lcn/nubia/music/repository/ArtistLocalDataSource;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/ArtistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/music/repository/ArtistLocalDataSource$3;->b:Lcn/nubia/music/repository/ArtistLocalDataSource;

    iput-object p3, p0, Lcn/nubia/music/repository/ArtistLocalDataSource$3;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/nubia/music/database/AccessRequest;-><init>(Lcn/nubia/music/database/AccessListener;)V

    return-void
.end method


# virtual methods
.method protected accessInBackground()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/music/repository/ArtistLocalDataSource$3;->b:Lcn/nubia/music/repository/ArtistLocalDataSource;

    invoke-static {v0}, Lcn/nubia/music/repository/ArtistLocalDataSource;->access$000(Lcn/nubia/music/repository/ArtistLocalDataSource;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/repository/ArtistLocalDataSource$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/music/app/db/ArtistDao;->getSongListOfArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/repository/ArtistLocalDataSource$3;->deliverData(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
