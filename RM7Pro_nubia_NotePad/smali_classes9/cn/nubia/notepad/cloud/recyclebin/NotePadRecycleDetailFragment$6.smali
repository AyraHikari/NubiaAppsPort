.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$6;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->showOverTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 256
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$6;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$6;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 261
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$6;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 262
    return-void
.end method
