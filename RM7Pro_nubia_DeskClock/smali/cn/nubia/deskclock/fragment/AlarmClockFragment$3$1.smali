.class Lcn/nubia/deskclock/fragment/AlarmClockFragment$3$1;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;

    .prologue
    .line 342
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3$1;->this$1:Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    const-string v1, "AlarmClockFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3$1;->this$1:Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;

    iget-object v3, v3, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$000(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->isSelectAll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3$1;->this$1:Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;

    iget-object v1, v1, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$000(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->isSelectAll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3$1;->this$1:Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;

    iget-object v1, v1, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    iget-object v1, v1, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->deleteFile(Ljava/io/File;)V

    .line 350
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3$1;->this$1:Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;

    iget-object v1, v1, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$000(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->confirmToDeleteSelection()V

    .line 351
    return-void
.end method
