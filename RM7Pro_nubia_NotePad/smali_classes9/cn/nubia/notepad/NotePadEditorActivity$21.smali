.class Lcn/nubia/notepad/NotePadEditorActivity$21;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->createRemindDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$editorTime:Z


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 3101
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-boolean p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->val$editorTime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;IIIII)V
    .locals 7
    .param p1, "pickView"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I
    .param p5, "hourOfDay"    # I
    .param p6, "minute"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x1

    .line 3106
    const/4 v1, 0x5

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v6

    const/4 v1, 0x2

    aput p4, v0, v1

    aput p5, v0, v2

    const/4 v1, 0x4

    aput p6, v0, v1

    .line 3109
    .local v0, "time":[I
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_0

    .line 3110
    const/16 v1, 0x18

    aput v1, v0, v2

    .line 3112
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5200(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    .line 3113
    invoke-static {v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2300(Lcn/nubia/notepad/NotePadEditorActivity;)J

    move-result-wide v4

    .line 3112
    invoke-static {v2, v3, v0, v4, v5}, Lcn/nubia/notepad/utils/Util;->getRemindTime(Landroid/content/Context;Ljava/lang/String;[IJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2302(Lcn/nubia/notepad/NotePadEditorActivity;J)J

    .line 3114
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2300(Lcn/nubia/notepad/NotePadEditorActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 3115
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2300(Lcn/nubia/notepad/NotePadEditorActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2400(Lcn/nubia/notepad/NotePadEditorActivity;J)V

    .line 3116
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1, v6}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2202(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z

    .line 3117
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v1, v6}, Lcn/nubia/notepad/NotePadEditorActivity;->updateRemindMenu(Z)V

    .line 3118
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->val$editorTime:Z

    if-eqz v1, :cond_1

    .line 3119
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$21;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1, v6}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5302(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z

    .line 3122
    :cond_1
    return-void
.end method
