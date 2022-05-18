.class Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;
.super Landroid/os/Handler;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 321
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .line 322
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 323
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 328
    if-nez p1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 329
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    const-string v0, "ScreenRecorder_start"

    const-string v1, "000000000000000000"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "ScreenRecorderchanglei888999 catch begin changlei"

    const-string v1, "33333333333"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->access$300(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)V

    .line 334
    const-string v0, "ScreenRecorderchanglei888999 catch end   changlei"

    const-string v1, "33333333333"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_1
    const-string v0, "ScreenRecorder_stop"

    const-string v1, "11111111111111111111"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "ScreenRecorder"

    const-string v1, "changleitest release"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->access$400(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)V

    goto :goto_0

    .line 342
    :pswitch_2
    const-string v0, "ScreenRecorder_suspend"

    const-string v1, "2222222222222222"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$WorkHanlder;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->access$500(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
