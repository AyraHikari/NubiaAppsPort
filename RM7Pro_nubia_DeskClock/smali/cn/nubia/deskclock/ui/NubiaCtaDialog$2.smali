.class Lcn/nubia/deskclock/ui/NubiaCtaDialog$2;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/NubiaCtaDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .prologue
    .line 93
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$2;->this$0:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$2;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    return-void
.end method
