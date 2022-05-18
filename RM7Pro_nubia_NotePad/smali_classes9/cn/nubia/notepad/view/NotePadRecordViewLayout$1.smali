.class Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;
.super Landroid/os/Handler;
.source "NotePadRecordViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadRecordViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 194
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0xa

    const/16 v5, 0x3b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$000(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "time":[Ljava/lang/String;
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "minute":I
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    .local v1, "second":I
    if-ge v1, v5, :cond_5

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 207
    :cond_1
    :goto_1
    if-ne v1, v5, :cond_2

    if-ne v0, v5, :cond_2

    .line 208
    const/4 v0, 0x0

    .line 209
    const/4 v1, 0x0

    .line 210
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$100(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a008c

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 212
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-virtual {v3, v6, v6}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->stopRecording(ZZ)V

    .line 214
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 216
    if-ge v1, v8, :cond_3

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 219
    :cond_3
    if-ge v0, v8, :cond_4

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 222
    :cond_4
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$000(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->updateNotificationRecordingTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_5
    if-ne v1, v5, :cond_1

    if-ge v0, v5, :cond_1

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 205
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 226
    .end local v0    # "minute":I
    .end local v1    # "second":I
    .end local v2    # "time":[Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$200(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V

    goto/16 :goto_0

    .line 230
    :pswitch_3
    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->updateNotification(I)V

    goto/16 :goto_0

    .line 233
    :pswitch_4
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$300(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V

    .line 234
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/NotePadEditorActivity;

    move-result-object v3

    iget-boolean v3, v3, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRunningCurrentActivity:Z

    if-eqz v3, :cond_0

    .line 237
    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$500(Lcn/nubia/notepad/view/NotePadRecordViewLayout;Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/NotePadEditorActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->clearRecordSpan()V

    goto/16 :goto_0

    .line 241
    :pswitch_5
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    const/4 v4, 0x0

    iput-object v4, v3, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    .line 242
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$600(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 243
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/NotePadEditorActivity;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v4}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$700(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v5}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$800(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->changeToPlayerView(Landroid/view/View;Ljava/io/File;)V

    .line 249
    :cond_6
    :goto_2
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$1000(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 250
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3, v6}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$1002(Lcn/nubia/notepad/view/NotePadRecordViewLayout;Z)Z

    .line 251
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/notepad/SysApplication;->exit()V

    goto/16 :goto_0

    .line 245
    :cond_7
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$900(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 246
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/NotePadEditorActivity;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v4}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$800(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/NotePadEditorActivity;->saveNote(Ljava/io/File;)V

    goto :goto_2

    .line 254
    :cond_8
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$1100(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/NotePadEditorActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    goto/16 :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
