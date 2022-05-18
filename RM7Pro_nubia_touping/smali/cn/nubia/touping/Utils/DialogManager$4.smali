.class Lcn/nubia/touping/Utils/DialogManager$4;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;


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
    .line 110
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$4;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBnClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$4;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$100(Lcn/nubia/touping/Utils/DialogManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 114
    return-void
.end method
