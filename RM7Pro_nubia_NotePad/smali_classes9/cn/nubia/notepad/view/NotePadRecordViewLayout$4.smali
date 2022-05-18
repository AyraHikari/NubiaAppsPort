.class Lcn/nubia/notepad/view/NotePadRecordViewLayout$4;
.super Ljava/util/TimerTask;
.source "NotePadRecordViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NotePadRecordViewLayout;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 672
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$4;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 675
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 676
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 677
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$4;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    iget-object v1, v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    return-void
.end method
