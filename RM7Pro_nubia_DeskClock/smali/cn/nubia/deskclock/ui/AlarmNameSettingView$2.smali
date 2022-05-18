.class Lcn/nubia/deskclock/ui/AlarmNameSettingView$2;
.super Ljava/lang/Object;
.source "AlarmNameSettingView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/AlarmNameSettingView;->createAlarmCustomNameDialog()Lcn/nubia/commonui/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->setAlarmName(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method
