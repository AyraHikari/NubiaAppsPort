.class Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;
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
    .line 275
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->access$400(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    .line 280
    :cond_0
    return-void
.end method
