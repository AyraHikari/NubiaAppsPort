.class Lcn/nubia/music/activity/RecentPlayingHistoryActivity$1;
.super Ljava/lang/Object;
.source "RecentPlayingHistoryActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/RecentPlayingHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/RecentPlayingHistoryActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/RecentPlayingHistoryActivity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity$1;->a:Lcn/nubia/music/activity/RecentPlayingHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity$1;->a:Lcn/nubia/music/activity/RecentPlayingHistoryActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity$1;->a:Lcn/nubia/music/activity/RecentPlayingHistoryActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity$1;->a:Lcn/nubia/music/activity/RecentPlayingHistoryActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "add_to_playing"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity$1;->a:Lcn/nubia/music/activity/RecentPlayingHistoryActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->addAllToPlaying()V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
