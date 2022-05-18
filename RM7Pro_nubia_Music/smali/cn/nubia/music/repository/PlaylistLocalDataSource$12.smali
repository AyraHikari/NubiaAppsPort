.class Lcn/nubia/music/repository/PlaylistLocalDataSource$12;
.super Lcn/nubia/music/database/AccessRequest;
.source "PlaylistLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/repository/PlaylistLocalDataSource;->addAudioIdsToPlaylists([J[JLcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
.field final synthetic a:[J

.field final synthetic b:[J

.field final synthetic c:Lcn/nubia/music/repository/PlaylistLocalDataSource;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;[J[J)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;->c:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    iput-object p3, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;->a:[J

    iput-object p4, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;->b:[J

    invoke-direct {p0, p2}, Lcn/nubia/music/database/AccessRequest;-><init>(Lcn/nubia/music/database/AccessListener;)V

    return-void
.end method


# virtual methods
.method protected accessInBackground()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;->c:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-static {v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->access$000(Lcn/nubia/music/repository/PlaylistLocalDataSource;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;->a:[J

    iget-object v2, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;->b:[J

    invoke-static {v0, v1, v2}, Lcn/nubia/music/app/db/PlaylistDao;->addAudioIdsToPlaylists(Landroid/content/Context;[J[J)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;->deliverData(Ljava/lang/Object;)V

    .line 110
    return-void
.end method
