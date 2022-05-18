.class Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/AbstractActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiracastRevceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/AbstractActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/touping/AbstractActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/touping/AbstractActivity;Lcn/nubia/touping/AbstractActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/touping/AbstractActivity;
    .param p2, "x1"    # Lcn/nubia/touping/AbstractActivity$1;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;-><init>(Lcn/nubia/touping/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const-string v2, "action.MIRACAST.NubiaWirelessTouPingForDeviceList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const-string v2, "MiracastDataList"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 129
    .local v1, "datalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changlei onReceive datalist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz v1, :cond_0

    .line 131
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changlei onReceive datalist.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v2, v2, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcn/nubia/touping/Utils/DialogManager;->dialogList(Ljava/util/List;Ljava/util/List;)V

    .line 135
    .end local v1    # "datalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    :cond_1
    return-void
.end method
