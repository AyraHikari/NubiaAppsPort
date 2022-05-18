.class Lcn/nubia/calendar/DeleteEventHelper$4;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/DeleteEventHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 185
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper$4;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 188
    iget-object v2, p0, Lcn/nubia/calendar/DeleteEventHelper$4;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper$4;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$1000(Lcn/nubia/calendar/DeleteEventHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$202(Lcn/nubia/calendar/DeleteEventHelper;I)I

    .line 189
    const-string v1, "huangdi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWhichDelete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/DeleteEventHelper$4;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v3}, Lcn/nubia/calendar/DeleteEventHelper;->access$200(Lcn/nubia/calendar/DeleteEventHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper$4;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$1100(Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 193
    .local v0, "ok":Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    return-void
.end method
