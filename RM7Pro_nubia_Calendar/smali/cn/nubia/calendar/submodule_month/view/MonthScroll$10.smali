.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$10;
.super Ljava/lang/Object;
.source "MonthScroll.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 1215
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$10;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "i"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1219
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$10;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2400(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1220
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 1239
    :goto_0
    return-void

    .line 1223
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    .line 1224
    .local v4, "id":J
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1225
    .local v6, "startMillis":J
    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1233
    .local v8, "endMillis":J
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$10;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2500(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0xfa4

    new-instance v3, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    invoke-virtual {v13, v14, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 1237
    .local v12, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v12, Landroid/os/Message;->arg1:I

    .line 1238
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
