.class Lcn/nubia/music/activity/BaseDetailListActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "BaseDetailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseDetailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseDetailListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$8;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$8;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$8;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 347
    :cond_0
    return-void
.end method
