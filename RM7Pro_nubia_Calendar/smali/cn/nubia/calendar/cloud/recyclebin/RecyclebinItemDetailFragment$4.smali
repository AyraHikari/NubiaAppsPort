.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->clearRecyclebin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener",
        "<",
        "Lcn/nubia/cloud/utils/NBResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 165
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/utils/NBResponse;)V
    .locals 1
    .param p1, "ret"    # Lcn/nubia/cloud/utils/NBResponse;

    .prologue
    .line 168
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$300(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    .line 169
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->onComplete(Lcn/nubia/cloud/utils/NBResponse;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method
