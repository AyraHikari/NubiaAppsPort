.class Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;
.super Landroid/os/Handler;
.source "CloudAlbumSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f10005c

    const v2, 0x7f1001a2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 114
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    const v0, 0x7f1001a1

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$100(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 108
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$300(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Lcn/nubia/cloud/backup/Backup;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->getTaskFailedCount()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$202(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;I)I

    .line 109
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    const v0, 0x7f10023d

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 103
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-virtual {p1, v2}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$100(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 98
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-virtual {p1, v2}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$100(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 94
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    const v1, 0x7f100266

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-virtual {v0, v2}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UPDATE_BACKUP_TEXTVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "size"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
