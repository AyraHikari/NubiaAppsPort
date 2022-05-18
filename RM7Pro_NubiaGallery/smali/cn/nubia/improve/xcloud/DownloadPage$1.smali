.class Lcn/nubia/improve/xcloud/DownloadPage$1;
.super Ljava/lang/Object;
.source "DownloadPage.java"

# interfaces
.implements Lcn/nubia/improve/xcloud/CloudManager$FileTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/DownloadPage;->downloadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/DownloadPage;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/DownloadPage;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/improve/xcloud/DownloadPage$1;->this$0:Lcn/nubia/improve/xcloud/DownloadPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public taskDone(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/DownloadPage$1;->this$0:Lcn/nubia/improve/xcloud/DownloadPage;

    invoke-static {v0, p1}, Lcn/nubia/improve/xcloud/DownloadPage;->access$000(Lcn/nubia/improve/xcloud/DownloadPage;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcn/nubia/improve/xcloud/DownloadPage$1;->this$0:Lcn/nubia/improve/xcloud/DownloadPage;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/DownloadPage;->access$100(Lcn/nubia/improve/xcloud/DownloadPage;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
