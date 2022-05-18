.class Lcn/nubia/calendar/DeleteEventHelper$6;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$originalEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/DeleteEventHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 300
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper$6;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    iput-object p2, p0, Lcn/nubia/calendar/DeleteEventHelper$6;->val$originalEvent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$6;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper$6;->val$originalEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$1300(Lcn/nubia/calendar/DeleteEventHelper;Ljava/lang/String;)V

    .line 304
    return-void
.end method
