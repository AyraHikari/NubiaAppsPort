.class Lcn/nubia/touping/Utils/DialogManager$3;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showCtaDialogForWiredTouPing()V
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
    .line 104
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$3;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBnClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$3;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$100(Lcn/nubia/touping/Utils/DialogManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/Utils/PermissionListUtils;->requestPermission(Landroid/app/Activity;)V

    .line 108
    return-void
.end method
