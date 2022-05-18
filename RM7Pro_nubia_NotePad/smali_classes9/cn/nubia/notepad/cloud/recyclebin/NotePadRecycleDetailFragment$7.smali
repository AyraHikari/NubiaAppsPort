.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$7;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->showClearTips()V
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
    .line 303
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$7;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 307
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 308
    return-void
.end method
