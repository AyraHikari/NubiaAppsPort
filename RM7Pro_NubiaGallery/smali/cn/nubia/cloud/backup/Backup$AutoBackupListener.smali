.class Lcn/nubia/cloud/backup/Backup$AutoBackupListener;
.super Ljava/lang/Object;
.source "Backup.java"

# interfaces
.implements Lcn/nubia/improve/xcloud/CloudManager$FileTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/backup/Backup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBackupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/backup/Backup;


# direct methods
.method private constructor <init>(Lcn/nubia/cloud/backup/Backup;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcn/nubia/cloud/backup/Backup$AutoBackupListener;->this$0:Lcn/nubia/cloud/backup/Backup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public taskDone(Ljava/lang/String;)V
    .locals 1

    const-string p1, "ImagesAutoBackup"

    const-string v0, "taskDone  leave ......"

    .line 509
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p1, p0, Lcn/nubia/cloud/backup/Backup$AutoBackupListener;->this$0:Lcn/nubia/cloud/backup/Backup;

    invoke-static {p1}, Lcn/nubia/cloud/backup/Backup;->access$400(Lcn/nubia/cloud/backup/Backup;)Lcn/nubia/cloud/ui/CloudAlbumSet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lcn/nubia/cloud/backup/Backup$AutoBackupListener;->this$0:Lcn/nubia/cloud/backup/Backup;

    invoke-static {p1}, Lcn/nubia/cloud/backup/Backup;->access$400(Lcn/nubia/cloud/backup/Backup;)Lcn/nubia/cloud/ui/CloudAlbumSet;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->reloadData()V

    :cond_0
    return-void
.end method
