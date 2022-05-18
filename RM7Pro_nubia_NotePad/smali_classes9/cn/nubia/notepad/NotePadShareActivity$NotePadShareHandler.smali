.class Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;
.super Landroid/os/Handler;
.source "NotePadShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NotePadShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotePadShareHandler"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/NotePadShareActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/NotePadShareActivity;)V
    .locals 1
    .param p1, "activity"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 243
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/NotePadShareActivity;

    .line 249
    .local v0, "activity":Lcn/nubia/notepad/NotePadShareActivity;
    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 290
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$500(Lcn/nubia/notepad/NotePadShareActivity;)V

    goto :goto_1

    .line 257
    :pswitch_2
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$300(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 260
    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadShareActivity;->finish()V

    goto :goto_1

    .line 263
    :pswitch_3
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 264
    new-instance v1, Lcn/nubia/commonui/app/ProgressDialog;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$300(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$602(Lcn/nubia/notepad/NotePadShareActivity;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 266
    :cond_2
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 267
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$300(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a009e

    .line 268
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 270
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 271
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    const v2, 0x7f0d0098

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setAnimPanelBackground(I)V

    goto :goto_1

    .line 274
    :pswitch_4
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 275
    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 276
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$602(Lcn/nubia/notepad/NotePadShareActivity;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    goto :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
