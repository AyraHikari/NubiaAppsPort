.class Lcn/nubia/calendar/EditResponseHelper$1;
.super Ljava/lang/Object;
.source "EditResponseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EditResponseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EditResponseHelper;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EditResponseHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EditResponseHelper;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/calendar/EditResponseHelper$1;->this$0:Lcn/nubia/calendar/EditResponseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    iget-object v1, p0, Lcn/nubia/calendar/EditResponseHelper$1;->this$0:Lcn/nubia/calendar/EditResponseHelper;

    invoke-static {v1, p2}, Lcn/nubia/calendar/EditResponseHelper;->access$002(Lcn/nubia/calendar/EditResponseHelper;I)I

    .line 68
    iget-object v1, p0, Lcn/nubia/calendar/EditResponseHelper$1;->this$0:Lcn/nubia/calendar/EditResponseHelper;

    invoke-static {v1}, Lcn/nubia/calendar/EditResponseHelper;->access$100(Lcn/nubia/calendar/EditResponseHelper;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 69
    .local v0, "ok":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    :cond_0
    return-void
.end method
