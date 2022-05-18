.class Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;
.super Ljava/lang/Object;
.source "NotePadRecordFileViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskForSetTotalTime"
.end annotation


# instance fields
.field private mPlayerResourceFile:Ljava/io/File;

.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;Ljava/io/File;)V
    .locals 0
    .param p2, "playerResourceFile"    # Ljava/io/File;

    .prologue
    .line 78
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;->mPlayerResourceFile:Ljava/io/File;

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;->mPlayerResourceFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->getRecordFileTotalTime(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "totalTime":Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 86
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "totalTime"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->access$000(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    return-void
.end method
