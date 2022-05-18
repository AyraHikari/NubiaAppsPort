.class public Lcn/nubia/music/app/scan/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/scan/MediaScanner$a;,
        Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;
    }
.end annotation


# instance fields
.field private client:Lcn/nubia/music/app/scan/MediaScanner$a;

.field private filePath:Ljava/lang/String;

.field private filePaths:[Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private mediaScanConn:Landroid/media/MediaScannerConnection;

.field private mediaScannerListener:Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 15
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->client:Lcn/nubia/music/app/scan/MediaScanner$a;

    .line 16
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePath:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->fileType:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePaths:[Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->client:Lcn/nubia/music/app/scan/MediaScanner$a;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcn/nubia/music/app/scan/MediaScanner$a;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/scan/MediaScanner$a;-><init>(Lcn/nubia/music/app/scan/MediaScanner;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->client:Lcn/nubia/music/app/scan/MediaScanner$a;

    .line 28
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Landroid/media/MediaScannerConnection;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/app/scan/MediaScanner;->client:Lcn/nubia/music/app/scan/MediaScanner$a;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 32
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/app/scan/MediaScanner;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/music/app/scan/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/music/app/scan/MediaScanner;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/music/app/scan/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner;->fileType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/music/app/scan/MediaScanner;)Landroid/media/MediaScannerConnection;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/app/scan/MediaScanner;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/music/app/scan/MediaScanner;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePaths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/music/app/scan/MediaScanner;)Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->mediaScannerListener:Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;

    return-object v0
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePath:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcn/nubia/music/app/scan/MediaScanner;->fileType:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 38
    return-void
.end method

.method public scanFile([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePaths:[Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcn/nubia/music/app/scan/MediaScanner;->fileType:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcn/nubia/music/app/scan/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 44
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner;->filePath:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner;->fileType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setMediaScannerListener(Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcn/nubia/music/app/scan/MediaScanner;->mediaScannerListener:Lcn/nubia/music/app/scan/MediaScanner$MediaScannerListener;

    .line 22
    return-void
.end method
