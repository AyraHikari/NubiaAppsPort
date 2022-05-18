.class Lcn/nubia/notepad/NotePadEditorActivity$25;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->checkPermissions(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$types:Ljava/lang/String;

.field final synthetic val$whereclicks:I


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 3458
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->val$types:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->val$whereclicks:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 0

    .prologue
    .line 3483
    return-void
.end method

.method public onGranted()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3461
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->val$types:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3479
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 3461
    :sswitch_0
    const-string v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "Storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "RecordRadio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v4, "PhoneStateAndContacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 3466
    :pswitch_1
    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->val$whereclicks:I

    if-ne v0, v1, :cond_2

    .line 3467
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5700(Lcn/nubia/notepad/NotePadEditorActivity;)V

    goto :goto_1

    .line 3468
    :cond_2
    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->val$whereclicks:I

    if-ne v0, v2, :cond_1

    .line 3469
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5800(Lcn/nubia/notepad/NotePadEditorActivity;)V

    goto :goto_1

    .line 3473
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$25;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5900(Lcn/nubia/notepad/NotePadEditorActivity;)V

    goto :goto_1

    .line 3461
    :sswitch_data_0
    .sparse-switch
        -0x62474499 -> :sswitch_3
        -0x4ecf95f6 -> :sswitch_2
        -0xd1725a5 -> :sswitch_1
        0x179a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
