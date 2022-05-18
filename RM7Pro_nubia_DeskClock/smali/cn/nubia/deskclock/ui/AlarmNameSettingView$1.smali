.class Lcn/nubia/deskclock/ui/AlarmNameSettingView$1;
.super Ljava/lang/Object;
.source "AlarmNameSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 124
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method
