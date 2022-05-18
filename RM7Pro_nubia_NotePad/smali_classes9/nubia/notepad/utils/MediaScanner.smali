.class public Lnubia/notepad/utils/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/notepad/utils/MediaScanner$SannerClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClient:Lnubia/notepad/utils/MediaScanner$SannerClient;

.field private mConn:Landroid/media/MediaScannerConnection;

.field private mFile:Ljava/io/File;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lnubia/notepad/utils/MediaScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnubia/notepad/utils/MediaScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    .line 24
    iput-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mClient:Lnubia/notepad/utils/MediaScanner$SannerClient;

    .line 25
    iput-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mFile:Ljava/io/File;

    .line 26
    iput-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mMimeType:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mClient:Lnubia/notepad/utils/MediaScanner$SannerClient;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lnubia/notepad/utils/MediaScanner$SannerClient;

    invoke-direct {v0, p0}, Lnubia/notepad/utils/MediaScanner$SannerClient;-><init>(Lnubia/notepad/utils/MediaScanner;)V

    iput-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mClient:Lnubia/notepad/utils/MediaScanner$SannerClient;

    .line 32
    :cond_0
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lnubia/notepad/utils/MediaScanner;->mClient:Lnubia/notepad/utils/MediaScanner$SannerClient;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    .line 35
    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lnubia/notepad/utils/MediaScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/notepad/utils/MediaScanner;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lnubia/notepad/utils/MediaScanner;

    .prologue
    .line 20
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/notepad/utils/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/notepad/utils/MediaScanner;

    .prologue
    .line 20
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/notepad/utils/MediaScanner;)Landroid/media/MediaScannerConnection;
    .locals 1
    .param p0, "x0"    # Lnubia/notepad/utils/MediaScanner;

    .prologue
    .line 20
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    return-object v0
.end method


# virtual methods
.method public scanFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lnubia/notepad/utils/MediaScanner;->mFile:Ljava/io/File;

    .line 70
    iput-object p2, p0, Lnubia/notepad/utils/MediaScanner;->mMimeType:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lnubia/notepad/utils/MediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 72
    return-void
.end method
