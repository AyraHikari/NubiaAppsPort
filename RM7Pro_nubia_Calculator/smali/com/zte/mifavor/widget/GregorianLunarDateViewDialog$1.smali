.class Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "GregorianLunarDateViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->onConfigurationChanged()V

    :cond_0
    return-void
.end method
