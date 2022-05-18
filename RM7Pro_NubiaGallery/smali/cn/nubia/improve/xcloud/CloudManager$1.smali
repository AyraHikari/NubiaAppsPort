.class Lcn/nubia/improve/xcloud/CloudManager$1;
.super Landroid/os/Handler;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->initHander()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/CloudManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;Landroid/os/Looper;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$400(Lcn/nubia/improve/xcloud/CloudManager;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$500(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 189
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$500(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;->deleteError()V

    goto :goto_0

    .line 185
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$400(Lcn/nubia/improve/xcloud/CloudManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/improve/xcloud/CloudManager;->doUseMobileData(Landroid/content/Context;)V

    goto :goto_0

    .line 182
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$400(Lcn/nubia/improve/xcloud/CloudManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/improve/xcloud/CloudManager;->networkUnenable(Landroid/content/Context;)V

    goto :goto_0

    .line 165
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$102(Lcn/nubia/improve/xcloud/CloudManager;Z)Z

    .line 166
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$200(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$200(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;->loginCompleted()V

    .line 169
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$300(Lcn/nubia/improve/xcloud/CloudManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 170
    sget-object p1, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 162
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$1;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$000(Lcn/nubia/improve/xcloud/CloudManager;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
