.class Lcn/nubia/music/activity/BaseMoreListActivity$5;
.super Ljava/lang/Object;
.source "BaseMoreListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;->initHeaer()V
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
    .line 346
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$5;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$5;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$5;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseMoreListActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$5;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/BaseMoreListActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play_all"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/BaseMoreListActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$5;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->playAllSongs()V

    .line 352
    return-void
.end method
