.class Lcn/nubia/touping/Utils/DialogManager$13;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->dialogList(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/DialogManager;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/DialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 392
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$13;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$13;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 396
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$13;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$600(Lcn/nubia/touping/Utils/DialogManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager$13;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v1}, Lcn/nubia/touping/Utils/DialogManager;->access$500(Lcn/nubia/touping/Utils/DialogManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$13;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 398
    return-void
.end method
