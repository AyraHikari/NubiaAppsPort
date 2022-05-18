.class public Lcn/nubia/music/activity/BaseMoreListActivity$DataSetObserver;
.super Landroid/database/ContentObserver;
.source "BaseMoreListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/music/activity/BaseMoreListActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$DataSetObserver;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    .line 534
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 535
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 544
    const-string v0, "DataSetObserver onChange"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$DataSetObserver;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->loadNeedRefreshData()V

    .line 546
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$DataSetObserver;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->loadData()V

    .line 547
    return-void
.end method
