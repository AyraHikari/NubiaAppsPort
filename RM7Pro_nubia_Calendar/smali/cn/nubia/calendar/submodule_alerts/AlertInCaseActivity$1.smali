.class Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$1;
.super Landroid/os/Handler;
.source "AlertInCaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$000(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$000(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$000(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
