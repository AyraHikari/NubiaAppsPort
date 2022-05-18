.class Lcn/nubia/deskclock/DeskClock$5;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/DeskClock;->showWarningDialog(Ljava/lang/StringBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/DeskClock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 813
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClock$5;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 815
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClock$5;->this$0:Lcn/nubia/deskclock/DeskClock;

    .line 817
    invoke-virtual {v3}, Lcn/nubia/deskclock/DeskClock;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 818
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock$5;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    .line 819
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock$5;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->finish()V

    .line 820
    return-void
.end method
