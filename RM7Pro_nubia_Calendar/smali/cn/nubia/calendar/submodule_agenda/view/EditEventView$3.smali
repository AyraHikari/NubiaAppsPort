.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 1043
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1047
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c01d6

    .line 1048
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 1050
    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;)V

    .line 1049
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    .line 1193
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 1195
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1196
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 1197
    return-void
.end method
