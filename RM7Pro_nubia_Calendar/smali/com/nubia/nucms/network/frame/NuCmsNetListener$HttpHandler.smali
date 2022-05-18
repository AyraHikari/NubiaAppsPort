.class Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;
.super Landroid/os/Handler;
.source "NuCmsNetListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/network/frame/NuCmsNetListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;


# direct methods
.method private constructor <init>(Lcom/nubia/nucms/network/frame/NuCmsNetListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 112
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>.HttpHandler;"
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lcom/nubia/nucms/network/frame/NuCmsNetListener;Landroid/os/Looper;Lcom/nubia/nucms/network/frame/NuCmsNetListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/nubia/nucms/network/frame/NuCmsNetListener$1;

    .prologue
    .line 111
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>.HttpHandler;"
    invoke-direct {p0, p1, p2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;-><init>(Lcom/nubia/nucms/network/frame/NuCmsNetListener;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>.HttpHandler;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 123
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 126
    .local v6, "data":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    aget-object v0, v6, v3

    check-cast v0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onStart(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    goto :goto_0

    .line 129
    .end local v6    # "data":[Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 130
    .restart local v6    # "data":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    aget-object v0, v6, v3

    check-cast v0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_0

    .line 133
    .end local v6    # "data":[Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 134
    .restart local v6    # "data":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    aget-object v0, v6, v3

    check-cast v0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;

    aget-object v1, v6, v4

    check-cast v1, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    invoke-virtual {v2, v0, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_0

    .line 137
    .end local v6    # "data":[Ljava/lang/Object;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 138
    .restart local v6    # "data":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    aget-object v0, v6, v4

    check-cast v0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_0

    .line 141
    .end local v6    # "data":[Ljava/lang/Object;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 142
    .restart local v6    # "data":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    aget-object v1, v6, v3

    check-cast v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    aget-object v2, v6, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v4, v6, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onLoading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V

    goto :goto_0

    .line 145
    .end local v6    # "data":[Ljava/lang/Object;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 146
    .restart local v6    # "data":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    aget-object v1, v6, v3

    check-cast v1, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    aget-object v2, v6, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v4, v6, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onUploading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V

    goto/16 :goto_0

    .line 149
    .end local v6    # "data":[Ljava/lang/Object;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 150
    .restart local v6    # "data":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    aget-object v0, v6, v3

    check-cast v0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    aget-object v1, v6, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v6, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onRetry(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V

    goto/16 :goto_0

    .line 153
    .end local v6    # "data":[Ljava/lang/Object;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 154
    .restart local v6    # "data":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    aget-object v0, v6, v3

    check-cast v0, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    aget-object v1, v6, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v6, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onRedirect(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V

    goto/16 :goto_0

    .line 157
    .end local v6    # "data":[Ljava/lang/Object;
    :pswitch_8
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
