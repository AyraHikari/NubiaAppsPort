.class Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;
.super Landroid/os/Handler;
.source "NotePadImageFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NotePadImageFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotePadImageFolderHandler"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/NotePadImageFolderActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/NotePadImageFolderActivity;)V
    .locals 1
    .param p1, "activity"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/NotePadImageFolderActivity;

    .line 173
    .local v0, "activity":Lcn/nubia/notepad/NotePadImageFolderActivity;
    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 176
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$100(Lcn/nubia/notepad/NotePadImageFolderActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 180
    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$200(Lcn/nubia/notepad/NotePadImageFolderActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0060

    const/4 v3, 0x0

    .line 179
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$300(Lcn/nubia/notepad/NotePadImageFolderActivity;)Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->finish()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
