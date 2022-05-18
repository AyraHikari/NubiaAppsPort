.class Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
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
    .line 238
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .line 239
    .local v2, "alertActivity":Lcn/nubia/calendar/submodule_alerts/AlertActivity;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getItemForView(Landroid/view/View;)Landroid/database/Cursor;

    move-result-object v10

    .line 242
    .local v10, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$400(Lcn/nubia/calendar/submodule_alerts/AlertActivity;J)V

    .line 247
    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    .line 248
    .local v4, "id":J
    const/4 v3, 0x4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 249
    .local v6, "startMillis":J
    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 250
    .local v8, "endMillis":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static/range {v3 .. v9}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->buildEventViewIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v11

    .line 252
    .local v11, "eventIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v3, v11}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v13, 0x480000

    invoke-virtual {v3, v13}, Landroid/view/Window;->clearFlags(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    const-string v13, "notification"

    invoke-virtual {v3, v13}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 260
    .local v12, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/NotificationManager;->cancelAll()V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$500(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->finish()V

    .line 263
    return-void
.end method
