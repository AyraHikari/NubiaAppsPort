.class Lcn/nubia/calendar/DeleteEventHelper$3;
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
    .line 169
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper$3;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$3;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$300(Lcn/nubia/calendar/DeleteEventHelper;)V

    .line 172
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$3;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$900(Lcn/nubia/calendar/DeleteEventHelper;)V

    .line 173
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$3;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$600(Lcn/nubia/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$3;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$600(Lcn/nubia/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$3;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$700(Lcn/nubia/calendar/DeleteEventHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$3;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$800(Lcn/nubia/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 179
    :cond_1
    return-void
.end method
