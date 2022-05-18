.class final Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
.super Landroid/os/Handler;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayedMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p2, "x1"    # Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;-><init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 470
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1300(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .line 472
    invoke-static {v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$700(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v4}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$800(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v5}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$900(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;

    move-result-object v5

    .line 471
    invoke-static {v1, v2, v3, v4, v5}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$300(Lcn/nubia/ex/chips/BaseRecipientAdapter;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1000(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    .line 474
    :cond_0
    return-void
.end method

.method public removeDelayedLoadMessage()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->removeMessages(I)V

    .line 483
    return-void
.end method

.method public sendDelayedLoadMessage()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 477
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    return-void
.end method
