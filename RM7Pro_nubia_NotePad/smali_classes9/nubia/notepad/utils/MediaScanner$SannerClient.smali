.class Lnubia/notepad/utils/MediaScanner$SannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/notepad/utils/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SannerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/notepad/utils/MediaScanner;


# direct methods
.method constructor <init>(Lnubia/notepad/utils/MediaScanner;)V
    .locals 0
    .param p1, "this$0"    # Lnubia/notepad/utils/MediaScanner;

    .prologue
    .line 37
    iput-object p1, p0, Lnubia/notepad/utils/MediaScanner$SannerClient;->this$0:Lnubia/notepad/utils/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private scan(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lnubia/notepad/utils/MediaScanner$SannerClient;->this$0:Lnubia/notepad/utils/MediaScanner;

    invoke-static {v2}, Lnubia/notepad/utils/MediaScanner;->access$300(Lnubia/notepad/utils/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 59
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 63
    .local v0, "f":Ljava/io/File;
    invoke-direct {p0, v0, p2}, Lnubia/notepad/utils/MediaScanner$SannerClient;->scan(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lnubia/notepad/utils/MediaScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMediaScannerConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner$SannerClient;->this$0:Lnubia/notepad/utils/MediaScanner;

    invoke-static {v0}, Lnubia/notepad/utils/MediaScanner;->access$100(Lnubia/notepad/utils/MediaScanner;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner$SannerClient;->this$0:Lnubia/notepad/utils/MediaScanner;

    invoke-static {v0}, Lnubia/notepad/utils/MediaScanner;->access$100(Lnubia/notepad/utils/MediaScanner;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lnubia/notepad/utils/MediaScanner$SannerClient;->this$0:Lnubia/notepad/utils/MediaScanner;

    invoke-static {v1}, Lnubia/notepad/utils/MediaScanner;->access$200(Lnubia/notepad/utils/MediaScanner;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnubia/notepad/utils/MediaScanner$SannerClient;->scan(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 49
    invoke-static {}, Lnubia/notepad/utils/MediaScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCompleted: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner$SannerClient;->this$0:Lnubia/notepad/utils/MediaScanner;

    invoke-static {v0}, Lnubia/notepad/utils/MediaScanner;->access$300(Lnubia/notepad/utils/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 51
    return-void
.end method
