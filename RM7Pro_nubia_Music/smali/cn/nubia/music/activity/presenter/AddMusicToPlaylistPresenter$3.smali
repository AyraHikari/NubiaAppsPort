.class Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$3;
.super Ljava/lang/Object;
.source "AddMusicToPlaylistPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->addAudioIdsToPlaylists([J[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/music/repository/Subscriber",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$3;->a:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$3;->a:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;

    iget-object v0, v0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mView:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;->showPlaylistAddedSuccess()V

    .line 77
    :cond_0
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$3;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
