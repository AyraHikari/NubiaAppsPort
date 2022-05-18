.class Lcn/nubia/music/activity/AlbumDetailActivity$1;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AlbumDetailActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/nubia/music/activity/AlbumDetailActivity$1;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$1;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/AlbumDetailActivity$1;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/AlbumDetailActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/AlbumDetailActivity$1;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/AlbumDetailActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "add_to_playing"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/AlbumDetailActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$1;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->addAllToPlaying()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
