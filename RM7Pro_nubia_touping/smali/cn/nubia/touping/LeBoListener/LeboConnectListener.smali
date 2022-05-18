.class public Lcn/nubia/touping/LeBoListener/LeboConnectListener;
.super Ljava/lang/Object;
.source "LeboConnectListener.java"

# interfaces
.implements Lcom/hpplay/sdk/source/api/IConnectListener;


# static fields
.field public static final MSG_CONNECT_FAILURE:I = 0xc

.field public static final MSG_CONNECT_SUCCESS:I = 0xb

.field private static final TAG:Ljava/lang/String; = "LeboConnectListener"


# instance fields
.field private context:Landroid/content/Context;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->mUiHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
    .locals 4
    .param p1, "lelinkServiceInfo"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .param p2, "extra"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
    .locals 4
    .param p1, "lelinkServiceInfo"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "text":Ljava/lang/String;
    const v1, 0x33c20

    if-ne p2, v1, :cond_3

    .line 38
    iget-object v1, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->context:Landroid/content/Context;

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    :goto_0
    const-string v1, "LeboConnectListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    :cond_1
    return-void

    .line 42
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->context:Landroid/content/Context;

    const v3, 0x7f080031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_3
    const v1, 0x33c2a

    if-ne p2, v1, :cond_0

    .line 46
    const v1, 0x33c2b

    if-ne p3, v1, :cond_4

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->context:Landroid/content/Context;

    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_4
    const v1, 0x33c2c

    if-ne p3, v1, :cond_5

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->context:Landroid/content/Context;

    const v3, 0x7f080086

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 50
    :cond_5
    const v1, 0x33c2d

    if-ne p3, v1, :cond_6

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->context:Landroid/content/Context;

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 52
    :cond_6
    const v1, 0x33c2e

    if-ne p3, v1, :cond_7

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->context:Landroid/content/Context;

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 54
    :cond_7
    const v1, 0x33c2f

    if-ne p3, v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;->context:Landroid/content/Context;

    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
