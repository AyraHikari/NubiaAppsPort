.class Lcn/nubia/cloud/backup/Backup$1;
.super Ljava/lang/Object;
.source "Backup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/backup/Backup;->traversBackUpFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/backup/Backup;

.field final synthetic val$removedAlbums:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/backup/Backup;Ljava/util/Vector;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcn/nubia/cloud/backup/Backup$1;->this$0:Lcn/nubia/cloud/backup/Backup;

    iput-object p2, p0, Lcn/nubia/cloud/backup/Backup$1;->val$removedAlbums:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup$1;->this$0:Lcn/nubia/cloud/backup/Backup;

    invoke-static {v0}, Lcn/nubia/cloud/backup/Backup;->access$000(Lcn/nubia/cloud/backup/Backup;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImagesAutoBackup"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup$1;->this$0:Lcn/nubia/cloud/backup/Backup;

    invoke-virtual {v2, v1}, Lcn/nubia/cloud/backup/Backup;->traversFolder(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup$1;->val$removedAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcn/nubia/cloud/backup/Backup$1;->this$0:Lcn/nubia/cloud/backup/Backup;

    invoke-static {v2, v1}, Lcn/nubia/cloud/backup/Backup;->access$100(Lcn/nubia/cloud/backup/Backup;Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup$1;->this$0:Lcn/nubia/cloud/backup/Backup;

    invoke-static {v0}, Lcn/nubia/cloud/backup/Backup;->access$200(Lcn/nubia/cloud/backup/Backup;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/backup/Backup;->onBackupFileSizeChanged(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/cloud/backup/Backup$1;->this$0:Lcn/nubia/cloud/backup/Backup;

    invoke-static {v0}, Lcn/nubia/cloud/backup/Backup;->access$300(Lcn/nubia/cloud/backup/Backup;)V

    return-void
.end method
