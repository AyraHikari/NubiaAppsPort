.class Lcn/nubia/touping/Utils/DialogManager$22;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showJumpSettingsDialogForWired(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/DialogManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/DialogManager;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 550
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$22;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    iput-object p2, p0, Lcn/nubia/touping/Utils/DialogManager$22;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBnClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 553
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$22;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 554
    return-void
.end method
