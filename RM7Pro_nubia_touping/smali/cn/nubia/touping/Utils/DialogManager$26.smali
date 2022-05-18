.class Lcn/nubia/touping/Utils/DialogManager$26;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showFloatingPermissionDialog(I)V
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
    .line 607
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$26;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBnClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 610
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$26;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 611
    return-void
.end method
