.class Lcn/nubia/calendar/DeleteEventHelper$8;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/DeleteEventHelper;->delete(JJLcn/nubia/calendar/model/CalendarEventModel;I)V
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
    .line 384
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper$8;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 388
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$8;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$202(Lcn/nubia/calendar/DeleteEventHelper;I)I

    .line 389
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$8;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$300(Lcn/nubia/calendar/DeleteEventHelper;)V

    .line 390
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$8;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$200(Lcn/nubia/calendar/DeleteEventHelper;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$8;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper$8;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$200(Lcn/nubia/calendar/DeleteEventHelper;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$1200(Lcn/nubia/calendar/DeleteEventHelper;I)V

    .line 394
    :cond_0
    return-void
.end method
