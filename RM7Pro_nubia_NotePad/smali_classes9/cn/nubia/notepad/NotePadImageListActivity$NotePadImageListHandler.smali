.class Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;
.super Landroid/os/Handler;
.source "NotePadImageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NotePadImageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotePadImageListHandler"
.end annotation


# instance fields
.field private mActicity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/NotePadImageListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/NotePadImageListActivity;)V
    .locals 1
    .param p1, "acticity"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 282
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 283
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;->mActicity:Ljava/lang/ref/WeakReference;

    .line 284
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 290
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;->mActicity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/NotePadImageListActivity;

    .line 291
    .local v0, "activity":Lcn/nubia/notepad/NotePadImageListActivity;
    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 294
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 296
    :pswitch_0
    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$600(Lcn/nubia/notepad/NotePadImageListActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$200(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/view/NotePadGridView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadGridView;->setVisibility(I)V

    .line 298
    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$700(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/adapter/NotePadImageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->notifyDataSetChanged()V

    .line 299
    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$800(Lcn/nubia/notepad/NotePadImageListActivity;)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
