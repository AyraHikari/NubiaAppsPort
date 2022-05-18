.class Lcn/nubia/music/activity/BaseMoreListActivity$2;
.super Ljava/lang/Object;
.source "BaseMoreListActivity.java"

# interfaces
.implements Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseMoreListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$2;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSong()V
    .locals 1

    .prologue
    .line 219
    const-string v0, "addSong"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$2;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->addSongToPlaylist()V

    .line 221
    return-void
.end method
