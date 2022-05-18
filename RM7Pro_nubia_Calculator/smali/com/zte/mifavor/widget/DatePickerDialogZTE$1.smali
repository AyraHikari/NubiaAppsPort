.class Lcom/zte/mifavor/widget/DatePickerDialogZTE$1;
.super Landroid/content/BroadcastReceiver;
.source "DatePickerDialogZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/DatePickerDialogZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/DatePickerDialogZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/DatePickerDialogZTE;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerDialogZTE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerDialogZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->onConfigurationChanged()V

    :cond_0
    return-void
.end method
