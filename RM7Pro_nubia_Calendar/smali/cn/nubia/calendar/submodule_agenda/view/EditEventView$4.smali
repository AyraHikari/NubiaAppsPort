.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$4;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;)V
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
    .line 1830
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$4;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1833
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_0

    .line 1835
    invoke-static {}, Lcn/nubia/calendar/CalendarApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1836
    invoke-static {}, Lcn/nubia/calendar/CalendarApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0156

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1834
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1838
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1840
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1845
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1857
    return-void
.end method
