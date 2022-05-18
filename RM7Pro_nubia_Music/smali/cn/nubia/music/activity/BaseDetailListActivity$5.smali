.class Lcn/nubia/music/activity/BaseDetailListActivity$5;
.super Ljava/lang/Object;
.source "BaseDetailListActivity.java"

# interfaces
.implements Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/BaseDetailListActivity;->initEmptyView()V
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
    .line 305
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$5;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshData()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$5;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->firstLoading()V

    .line 309
    return-void
.end method
