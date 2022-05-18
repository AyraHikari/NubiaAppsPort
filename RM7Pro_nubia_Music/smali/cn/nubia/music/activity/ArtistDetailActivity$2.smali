.class Lcn/nubia/music/activity/ArtistDetailActivity$2;
.super Ljava/lang/Object;
.source "ArtistDetailActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/ArtistDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/ArtistDetailActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/ArtistDetailActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcn/nubia/music/activity/ArtistDetailActivity$2;->a:Lcn/nubia/music/activity/ArtistDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity$2;->a:Lcn/nubia/music/activity/ArtistDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/ArtistDetailActivity$2;->a:Lcn/nubia/music/activity/ArtistDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/ArtistDetailActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/ArtistDetailActivity$2;->a:Lcn/nubia/music/activity/ArtistDetailActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/ArtistDetailActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "add_to_playing"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/ArtistDetailActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity$2;->a:Lcn/nubia/music/activity/ArtistDetailActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->addAllToPlaying()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
