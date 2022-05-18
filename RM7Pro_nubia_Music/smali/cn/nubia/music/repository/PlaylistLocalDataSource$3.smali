.class Lcn/nubia/music/repository/PlaylistLocalDataSource$3;
.super Lcn/nubia/music/database/AccessRequest;
.source "PlaylistLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/repository/PlaylistLocalDataSource;->deleteSongsFromHistory(Ljava/util/List;)Lcn/nubia/music/database/AccessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/music/database/AccessRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcn/nubia/music/repository/PlaylistLocalDataSource;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$3;->b:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    iput-object p3, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$3;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcn/nubia/music/database/AccessRequest;-><init>(Lcn/nubia/music/database/AccessListener;)V

    return-void
.end method


# virtual methods
.method protected accessInBackground()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$3;->b:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-static {v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->access$000(Lcn/nubia/music/repository/PlaylistLocalDataSource;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$3;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcn/nubia/music/app/db/PlaylistDao;->deleteSongsFromHistory(Landroid/content/Context;Ljava/util/List;)V

    .line 158
    return-void
.end method
