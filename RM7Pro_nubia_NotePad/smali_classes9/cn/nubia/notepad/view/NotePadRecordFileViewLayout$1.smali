.class Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;
.super Landroid/os/Handler;
.source "NotePadRecordFileViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "totalTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "totalTime":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-static {v1}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->access$100(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
