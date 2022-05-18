.class public Lcn/nubia/improve/xcloud/DownloadPage;
.super Ljava/lang/Object;
.source "DownloadPage.java"


# instance fields
.field private mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

.field private mContext:Landroid/content/Context;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryActivity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 20
    iput-object v0, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mPaths:Ljava/util/ArrayList;

    .line 23
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mPaths:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/xcloud/DownloadPage;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/improve/xcloud/DownloadPage;->createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/improve/xcloud/DownloadPage;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method


# virtual methods
.method public downloadImage()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-eqz v0, :cond_1

    .line 34
    iget-object v1, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mPaths:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v1, Lcn/nubia/improve/xcloud/DownloadPage$1;

    invoke-direct {v1, p0}, Lcn/nubia/improve/xcloud/DownloadPage$1;-><init>(Lcn/nubia/improve/xcloud/DownloadPage;)V

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->setUploadListener(Lcn/nubia/improve/xcloud/CloudManager$FileTaskListener;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    iget-object v1, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/improve/xcloud/CloudManager;->download(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public setPath(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcn/nubia/improve/xcloud/DownloadPage;->mPaths:Ljava/util/ArrayList;

    return-void
.end method
