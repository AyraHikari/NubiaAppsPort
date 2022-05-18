.class Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;
.super Ljava/lang/Object;
.source "WallpaperChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;Landroid/content/Context;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;

    iput-object p2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 51
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 53
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 54
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->access$000()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Constraints"

    if-nez v1, :cond_1

    .line 64
    :try_start_1
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/HistoryWallpaperUtil;->CreateVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "rw"

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/util/HistoryWallpaperUtil;->CopyVideo(Landroid/os/ParcelFileDescriptor;Ljava/io/FileInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->val$context:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-string v0, "history wallpaper copy success"

    .line 69
    invoke-static {v2, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "history wallpaper copy fail"

    .line 71
    invoke-static {v2, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "history file is Exist !"

    .line 74
    invoke-static {v2, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;

    iget-object v0, v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 82
    :try_start_2
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;

    iget-object v0, v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 77
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;

    iget-object v0, v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 82
    :try_start_4
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;

    iget-object v0, v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 79
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;

    iget-object v1, v1, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 82
    :try_start_5
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;

    iget-object v1, v1, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    :cond_2
    :goto_2
    throw v0

    :cond_3
    :goto_3
    return-void
.end method
