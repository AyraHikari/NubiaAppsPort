.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15$1;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/attachment/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/sync/common/attachment/DownloadListener",
        "<",
        "Lcn/nubia/cloud/sync/common/attachment/AttachmentData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;

    .prologue
    .line 590
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15$1;->this$1:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(IJJLcn/nubia/cloud/sync/common/attachment/AttachmentData;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # J
    .param p6, "arg3"    # Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    .prologue
    .line 595
    return-void
.end method

.method public bridge synthetic onStatus(IJJLjava/lang/Object;)V
    .locals 8

    .prologue
    .line 590
    move-object v6, p6

    check-cast v6, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15$1;->onStatus(IJJLcn/nubia/cloud/sync/common/attachment/AttachmentData;)V

    return-void
.end method
