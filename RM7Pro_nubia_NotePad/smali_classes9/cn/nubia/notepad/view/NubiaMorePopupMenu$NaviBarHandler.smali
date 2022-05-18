.class Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarHandler;
.super Landroid/os/Handler;
.source "NubiaMorePopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NubiaMorePopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NaviBarHandler"
.end annotation


# instance fields
.field myPopupMenu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/view/NubiaMorePopupMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)V
    .locals 1
    .param p1, "popupMenu"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarHandler;->myPopupMenu:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarHandler;->myPopupMenu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .line 76
    .local v0, "nubiaPopupMenu":Lcn/nubia/notepad/view/NubiaMorePopupMenu;
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->refreshView()V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
