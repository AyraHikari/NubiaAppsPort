.class Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;
.super Ljava/lang/Object;
.source "NubiaCtaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/NubiaCtaDialog;->showCtaDialog(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

.field final synthetic val$callback:Lcn/nubia/deskclock/inter/INubiaCtaCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/NubiaCtaDialog;Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .prologue
    .line 101
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;->this$0:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;->val$callback:Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;->this$0:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;->val$callback:Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->access$000(Lcn/nubia/deskclock/ui/NubiaCtaDialog;Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V

    .line 105
    return-void
.end method
