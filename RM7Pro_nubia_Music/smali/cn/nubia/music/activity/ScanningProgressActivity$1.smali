.class Lcn/nubia/music/activity/ScanningProgressActivity$1;
.super Landroid/os/Handler;
.source "ScanningProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/ScanningProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/ScanningProgressActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/ScanningProgressActivity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcn/nubia/music/activity/ScanningProgressActivity$1;->a:Lcn/nubia/music/activity/ScanningProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageMgr()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/ScanningProgressActivity$1;->a:Lcn/nubia/music/activity/ScanningProgressActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/ScanningProgressActivity;->finish()V

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v2, v2, v2, v2}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p0, v3}, Lcn/nubia/music/activity/ScanningProgressActivity$1;->removeMessages(I)V

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 58
    iget-object v0, p0, Lcn/nubia/music/activity/ScanningProgressActivity$1;->a:Lcn/nubia/music/activity/ScanningProgressActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/ScanningProgressActivity;->setResult(I)V

    .line 59
    iget-object v0, p0, Lcn/nubia/music/activity/ScanningProgressActivity$1;->a:Lcn/nubia/music/activity/ScanningProgressActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/ScanningProgressActivity;->finish()V

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0, v3}, Lcn/nubia/music/activity/ScanningProgressActivity$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 63
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/music/activity/ScanningProgressActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
