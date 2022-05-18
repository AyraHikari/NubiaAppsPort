.class public Lcn/nubia/deftmachanism/DeftController;
.super Ljava/lang/Object;
.source "DeftController.java"

# interfaces
.implements Lcn/nubia/deftmachanism/IDeftController;


# static fields
.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSenderToMaster:Lcn/nubia/deftmachanism/IDeftEventSender;

.field protected mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftController;->mContext:Landroid/content/Context;

    .line 85
    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftController;->mSenderToMaster:Lcn/nubia/deftmachanism/IDeftEventSender;

    .line 86
    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcn/nubia/deftmachanism/DeftController;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcn/nubia/deftmachanism/DeftController;->mSenderToMaster:Lcn/nubia/deftmachanism/IDeftEventSender;

    .line 24
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    const-string v0, "Calendar"

    const-string v1, "DeftController.destroy()"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    :cond_0
    invoke-virtual {p0, v2}, Lcn/nubia/deftmachanism/DeftController;->setWorkHandler(Landroid/os/Handler;)V

    .line 75
    iput-object v2, p0, Lcn/nubia/deftmachanism/DeftController;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public pasue()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected sendEventToMaster(Lcn/nubia/deftmachanism/DeftEvent;)V
    .locals 1
    .param p1, "evt"    # Lcn/nubia/deftmachanism/DeftEvent;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftController;->mSenderToMaster:Lcn/nubia/deftmachanism/IDeftEventSender;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftController;->mSenderToMaster:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-interface {v0, p1}, Lcn/nubia/deftmachanism/IDeftEventSender;->sendEvent(Lcn/nubia/deftmachanism/DeftEvent;)V

    goto :goto_0
.end method

.method protected sendWorkEvent(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 32
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 37
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 38
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected sendWorkEvent(Lcn/nubia/deftmachanism/DeftEvent;)V
    .locals 2
    .param p1, "evt"    # Lcn/nubia/deftmachanism/DeftEvent;

    .prologue
    .line 43
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 48
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Lcn/nubia/deftmachanism/DeftEvent;->mEvtId:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 49
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected setWorkHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 27
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeftController.setWorkHandler(), handler == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcn/nubia/deftmachanism/DeftController;->mWorkHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public start(I)I
    .locals 1
    .param p1, "startFlag"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public stop(I)I
    .locals 1
    .param p1, "stopFlag"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
