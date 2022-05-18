.class Lcom/nubia/nucms/api/NuCmsSdk$1;
.super Ljava/lang/Object;
.source "NuCmsSdk.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/nucms/api/NuCmsSdk;->init(Lcom/nubia/nucms/bean/NuCmsParamSdkInit;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/nucms/api/NuCmsSdk;


# direct methods
.method constructor <init>(Lcom/nubia/nucms/api/NuCmsSdk;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nubia/nucms/api/NuCmsSdk;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/nubia/nucms/api/NuCmsSdk$1;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 140
    :goto_0
    return v4

    .line 127
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 128
    .local v1, "data":[Ljava/lang/Object;
    aget-object v0, v1, v4

    check-cast v0, Lcom/nubia/nucms/api/NuCmsModelCallback;

    .line 129
    .local v0, "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;
    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, Lcom/nubia/nucms/bean/NuCmsStatusBean;

    invoke-interface {v0, v2}, Lcom/nubia/nucms/api/NuCmsModelCallback;->onSuccess(Lcom/nubia/nucms/bean/NuCmsStatusBean;)V

    goto :goto_0

    .line 133
    .end local v0    # "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;
    .end local v1    # "data":[Ljava/lang/Object;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 134
    .restart local v1    # "data":[Ljava/lang/Object;
    aget-object v0, v1, v4

    check-cast v0, Lcom/nubia/nucms/api/NuCmsModelCallback;

    .line 135
    .restart local v0    # "cb":Lcom/nubia/nucms/api/NuCmsModelCallback;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/nubia/nucms/api/NuCmsModelCallback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
