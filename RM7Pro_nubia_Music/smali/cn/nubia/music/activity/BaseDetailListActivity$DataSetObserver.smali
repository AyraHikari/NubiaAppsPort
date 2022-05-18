.class public Lcn/nubia/music/activity/BaseDetailListActivity$DataSetObserver;
.super Landroid/database/ContentObserver;
.source "BaseDetailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseDetailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/music/activity/BaseDetailListActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/BaseDetailListActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$DataSetObserver;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    .line 542
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 543
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 552
    const-string v0, "DataSetObserver onChange"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$DataSetObserver;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->loadNeedRefreshData()V

    .line 554
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$DataSetObserver;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->loadData()V

    .line 555
    return-void
.end method
