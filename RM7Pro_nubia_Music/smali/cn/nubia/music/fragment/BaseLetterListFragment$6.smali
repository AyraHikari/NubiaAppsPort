.class Lcn/nubia/music/fragment/BaseLetterListFragment$6;
.super Ljava/lang/Object;
.source "BaseLetterListFragment.java"

# interfaces
.implements Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/BaseLetterListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$6;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshData()V
    .locals 2

    .prologue
    .line 784
    const-string v0, "scan"

    const-string v1, "refreshData"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$6;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1400(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/app/scan/MusicScanManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$6;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1400(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/app/scan/MusicScanManager;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/scan/MusicScanManager;->startMusicScan(I)V

    .line 788
    :cond_0
    return-void
.end method
