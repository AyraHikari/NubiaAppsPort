.class Lcn/nubia/music/app/scan/MusicScanManager$a;
.super Landroid/os/Handler;
.source "MusicScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/MusicScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanManager;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/app/scan/MusicScanManager;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$a;->a:Ljava/lang/ref/WeakReference;

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$a;->b:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanManager;

    .line 118
    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanManager$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 119
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 125
    :sswitch_0
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->dismissScanProgress()V

    .line 126
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00e4

    .line 127
    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->access$800(Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->access$800(Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;->scanComplete()V

    goto :goto_0

    .line 133
    :sswitch_1
    const-string v1, "handleMessage(),MSG_AUTO_SCAN_MUSIC"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanManager;->access$700(Lcn/nubia/music/app/scan/MusicScanManager;I)V

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
