.class Lcn/nubia/touping/WiredSettingsActivity$1;
.super Ljava/lang/Object;
.source "WiredSettingsActivity.java"

# interfaces
.implements Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredSettingsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/WiredSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/WiredSettingsActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcn/nubia/touping/WiredSettingsActivity$1;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHdmiPluggedChanged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    .line 129
    const-string v0, "[WiredSettingsActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHdmiPluggedChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$1;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    invoke-static {v0}, Lcn/nubia/touping/WiredSettingsActivity;->access$000(Lcn/nubia/touping/WiredSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$1;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    invoke-static {v0}, Lcn/nubia/touping/WiredSettingsActivity;->access$000(Lcn/nubia/touping/WiredSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$1;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    invoke-static {v0}, Lcn/nubia/touping/WiredSettingsActivity;->access$000(Lcn/nubia/touping/WiredSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 132
    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$1;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->access$002(Lcn/nubia/touping/WiredSettingsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$1;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    invoke-static {v0}, Lcn/nubia/touping/WiredSettingsActivity;->access$100(Lcn/nubia/touping/WiredSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$1;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    invoke-static {v0}, Lcn/nubia/touping/WiredSettingsActivity;->access$100(Lcn/nubia/touping/WiredSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$1;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    invoke-static {v0}, Lcn/nubia/touping/WiredSettingsActivity;->access$100(Lcn/nubia/touping/WiredSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    :cond_1
    return-void
.end method
