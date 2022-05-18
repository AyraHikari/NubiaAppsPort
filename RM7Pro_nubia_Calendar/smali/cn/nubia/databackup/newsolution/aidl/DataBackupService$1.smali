.class Lcn/nubia/databackup/newsolution/aidl/DataBackupService$1;
.super Ljava/lang/Object;
.source "DataBackupService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->startRestore(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/databackup/newsolution/aidl/DataBackupService;


# direct methods
.method constructor <init>(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .prologue
    .line 388
    iput-object p1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$1;->this$0:Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 392
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$1;->this$0:Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    invoke-virtual {v1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/calendar/util/Utils;->setCalendarIcon(Landroid/content/Context;)V

    .line 397
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
