.class Lcn/nubia/music/activity/BaseMoreListActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "BaseMoreListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;
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
    .line 314
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$4;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$4;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$4;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->invalidateViews()V

    .line 321
    :cond_0
    return-void
.end method
