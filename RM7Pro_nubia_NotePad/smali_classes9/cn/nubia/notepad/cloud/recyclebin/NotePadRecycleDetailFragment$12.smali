.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->childItemClickDo(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

.field final synthetic val$childPosition:I

.field final synthetic val$groupPosition:I

.field final synthetic val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 442
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    iput-object p2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    iput p3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;->val$groupPosition:I

    iput p4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 446
    packed-switch p2, :pswitch_data_0

    .line 453
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 454
    return-void

    .line 448
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    iget v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;->val$groupPosition:I

    iget v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;->val$childPosition:I

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1700(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V

    goto :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
