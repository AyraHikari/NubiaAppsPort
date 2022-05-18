.class Lcn/nubia/calendar/DeleteEventHelper$5;
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
    .line 200
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper$5;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$5;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$300(Lcn/nubia/calendar/DeleteEventHelper;)V

    .line 206
    const-string v0, "huangdi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWhichDelete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/DeleteEventHelper$5;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v2}, Lcn/nubia/calendar/DeleteEventHelper;->access$200(Lcn/nubia/calendar/DeleteEventHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$5;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$200(Lcn/nubia/calendar/DeleteEventHelper;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$5;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper$5;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$200(Lcn/nubia/calendar/DeleteEventHelper;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$1200(Lcn/nubia/calendar/DeleteEventHelper;I)V

    .line 210
    :cond_0
    return-void
.end method
