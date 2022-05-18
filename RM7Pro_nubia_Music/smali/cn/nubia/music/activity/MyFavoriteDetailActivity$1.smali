.class Lcn/nubia/music/activity/MyFavoriteDetailActivity$1;
.super Ljava/lang/Object;
.source "MyFavoriteDetailActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MyFavoriteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MyFavoriteDetailActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MyFavoriteDetailActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity$1;->a:Lcn/nubia/music/activity/MyFavoriteDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity$1;->a:Lcn/nubia/music/activity/MyFavoriteDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity$1;->a:Lcn/nubia/music/activity/MyFavoriteDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity$1;->a:Lcn/nubia/music/activity/MyFavoriteDetailActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "add_to_playing"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity$1;->a:Lcn/nubia/music/activity/MyFavoriteDetailActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->addAllToPlaying()V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
