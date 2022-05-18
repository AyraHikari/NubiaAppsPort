.class Lcn/nubia/music/activity/PlayListDetailActivity$2;
.super Ljava/lang/Object;
.source "PlayListDetailActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/PlayListDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlayListDetailActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/PlayListDetailActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->addAllToPlaying()V

    .line 131
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/PlayListDetailActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/PlayListDetailActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "add_to_playing"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/PlayListDetailActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->addSongToPlaylist()V

    .line 136
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/PlayListDetailActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/PlayListDetailActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playlist_add_music"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/PlayListDetailActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->access$000(Lcn/nubia/music/activity/PlayListDetailActivity;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/PlayListDetailActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/PlayListDetailActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rename_playlist"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/PlayListDetailActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->access$100(Lcn/nubia/music/activity/PlayListDetailActivity;)V

    .line 146
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/PlayListDetailActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity$2;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/PlayListDetailActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "delete_playlist"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/PlayListDetailActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
