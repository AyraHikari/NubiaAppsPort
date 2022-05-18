.class Lcn/nubia/music/app/scan/MediaScanner$a;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/scan/MediaScanner;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/scan/MediaScanner;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MediaScanner;->access$000(Lcn/nubia/music/app/scan/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MediaScanner;->access$200(Lcn/nubia/music/app/scan/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v1}, Lcn/nubia/music/app/scan/MediaScanner;->access$000(Lcn/nubia/music/app/scan/MediaScanner;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    .line 75
    invoke-static {v2}, Lcn/nubia/music/app/scan/MediaScanner;->access$100(Lcn/nubia/music/app/scan/MediaScanner;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MediaScanner;->access$300(Lcn/nubia/music/app/scan/MediaScanner;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MediaScanner;->access$300(Lcn/nubia/music/app/scan/MediaScanner;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 79
    iget-object v4, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v4}, Lcn/nubia/music/app/scan/MediaScanner;->access$200(Lcn/nubia/music/app/scan/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    .line 80
    invoke-static {v5}, Lcn/nubia/music/app/scan/MediaScanner;->access$100(Lcn/nubia/music/app/scan/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v4, v3, v5}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0, v6}, Lcn/nubia/music/app/scan/MediaScanner;->access$002(Lcn/nubia/music/app/scan/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0, v6}, Lcn/nubia/music/app/scan/MediaScanner;->access$102(Lcn/nubia/music/app/scan/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0, v6}, Lcn/nubia/music/app/scan/MediaScanner;->access$302(Lcn/nubia/music/app/scan/MediaScanner;[Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MediaScanner;->access$200(Lcn/nubia/music/app/scan/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 90
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MediaScanner;->access$400(Lcn/nubia/music/app/scan/MediaScanner;)Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner$a;->a:Lcn/nubia/music/app/scan/MediaScanner;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MediaScanner;->access$400(Lcn/nubia/music/app/scan/MediaScanner;)Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    :cond_0
    return-void
.end method
